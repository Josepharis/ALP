import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import '../services/in_app_purchase_service.dart';
import '../services/premium_service.dart';
import '../services/language_service.dart';
import '../l10n/app_localizations.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> with TickerProviderStateMixin {
  final InAppPurchaseService _purchaseService = InAppPurchaseService();
  final PremiumService _premiumService = PremiumService();
  String _selectedPlan = 'monthly';
  bool _isProcessingPurchase = false;
  bool _purchaseCompletedCalled = false; // Prevent multiple pop() calls
  StreamSubscription<String>? _restoreRejectSubscription;
  StreamSubscription<String>? _purchaseSuccessSubscription;
  Timer? _priceRefreshTimer;
  Timer? _purchaseCompletePollTimer;
  
  // Ürün yükleme durumunu track et
  bool _productsWereLoaded = false;
  
  late AnimationController _backgroundController;
  late Animation<Color?> _backgroundColorAnimation;
  late AnimationController _pulseController;

  @override
  void initState() {
    super.initState();
    
    // Initialize purchase service to load products
    _purchaseService.initialize().then((_) {
      if (mounted) {
        // Ürünler yüklendikten sonra UI'ı güncelle (retry mekanizması)
        _refreshPricesAfterLoad();
      }
    });
    
    // Satın alma Firestore'a kaydedildiğinde ekranı kapat
    _purchaseSuccessSubscription = _purchaseService.purchaseSuccessStream.listen((_) {
      debugPrint('📡 Purchase success stream received!');
      if (mounted) {
        debugPrint('📡 Widget mounted, calling _onPurchaseCompleted()');
        _onPurchaseCompleted();
      } else {
        debugPrint('⚠️ Widget not mounted, skipping _onPurchaseCompleted()');
      }
    });
    
    // Periyodik olarak ürünlerin yüklenip yüklenmediğini kontrol et
    _priceRefreshTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      
      // Ürünler yüklendiyse UI'ı güncelle ve timer'ı durdur
      final hasAllProducts = _purchaseService.getProduct(InAppPurchaseService.premiumMonthlyId) != null &&
                            _purchaseService.getProduct(InAppPurchaseService.premiumSixMonthId) != null &&
                            _purchaseService.getProduct(InAppPurchaseService.premiumYearlyId) != null;
      
      if (hasAllProducts) {
        if (!_productsWereLoaded) {
          debugPrint('✅ All products loaded via timer, updating UI...');
          _productsWereLoaded = true;
          setState(() {}); // UI'ı güncelle
        }
        timer.cancel(); // Ürünler yüklendi, timer'ı durdur
      } else {
        // Ürünler hala yükleniyor, 30 saniye sonra durdur
        if (timer.tick > 30) {
          debugPrint('⚠️ Products not loaded after 30 seconds, stopping timer');
          timer.cancel();
        }
      }
    });
    
    // Listen to restore reject notifications (only when subscription belongs to another account)
    _restoreRejectSubscription = _purchaseService.restoreRejectStream.listen((message) {
      if (mounted) {
        debugPrint('🚫 Restore rejected: $message');
        
        // Stop loading
        setState(() {
          _isProcessingPurchase = false;
        });
        
        // Show alert - this means the subscription belongs to a different Firebase account
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color(0xFF1A237E),
            title: Row(
              children: [
                const Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 28),
                const SizedBox(width: 8),
                Text(AppLocalizations.of(context)!.subscriptionBelongsToAnotherAccount, style: const TextStyle(color: Colors.white)),
              ],
            ),
            content: Text(
              message,
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Tamam', style: TextStyle(color: Colors.cyan)),
              ),
            ],
          ),
        );
      }
    });
    
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
    
    _backgroundController = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..repeat(reverse: true);

    _backgroundColorAnimation = ColorTween(
      begin: const Color(0xFF1E88E5),
      end: const Color(0xFF26C6DA),
    ).animate(
      CurvedAnimation(parent: _backgroundController, curve: Curves.easeInOut),
    );

    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _isProcessingPurchase = false;
    _restoreRejectSubscription?.cancel();
    _purchaseSuccessSubscription?.cancel();
    _priceRefreshTimer?.cancel();
    _purchaseCompletePollTimer?.cancel();
    
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
    
    _backgroundController.dispose();
    _pulseController.dispose();
    super.dispose();
  }
  
  /// Satın alma Firestore'a kaydedildi veya premium aktif - loading'i kapat ve ekranı kapat
  void _onPurchaseCompleted() {
    debugPrint('🎯 _onPurchaseCompleted() called');
    
    // Prevent multiple calls
    if (_purchaseCompletedCalled) {
      debugPrint('⚠️ _onPurchaseCompleted already called, skipping');
      return;
    }
    _purchaseCompletedCalled = true;
    
    _purchaseCompletePollTimer?.cancel();
    
    if (!mounted) {
      debugPrint('⚠️ Widget not mounted in _onPurchaseCompleted');
      return;
    }
    
    debugPrint('🎯 Closing premium screen...');
    
    // First update state to stop loading
    setState(() => _isProcessingPurchase = false);
    
    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.success),
        backgroundColor: Colors.green,
        duration: const Duration(seconds: 2),
      ),
    );
    
    // Use addPostFrameCallback to ensure UI is stable before pop
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        debugPrint('🎯 Executing Navigator.pop()');
        Navigator.of(context).pop();
      }
    });
  }
  
  /// Satın alma başlatıldıktan sonra premium aktif olana kadar poll et
  void _startPurchaseCompletePolling() {
    _purchaseCompletePollTimer?.cancel();
    int elapsed = 0;
    const maxSeconds = 15;
    const interval = Duration(seconds: 1);
    _purchaseCompletePollTimer = Timer.periodic(interval, (timer) async {
      elapsed += 1;
      if (!mounted) {
        timer.cancel();
        return;
      }
      final isPremium = await _premiumService.hasPremiumAccess();
      if (isPremium && mounted) {
        timer.cancel();
        _onPurchaseCompleted();
        return;
      }
      if (elapsed >= maxSeconds && mounted) {
        timer.cancel();
        setState(() => _isProcessingPurchase = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.processTimeoutPremium),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    });
  }
  
  // Ürünler yüklendikten sonra UI'ı güncelle (retry mekanizması)
  void _refreshPricesAfterLoad() {
    // İlk güncelleme
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) setState(() {});
    });
    // İkinci güncelleme (TestFlight'ta gecikme olabilir)
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) setState(() {});
    });
    // Üçüncü güncelleme
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // Her build'de ürünleri kontrol et - TestFlight'ta geç yüklenebilir
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      final monthlyProduct = _purchaseService.getProduct(InAppPurchaseService.premiumMonthlyId);
      final sixMonthProduct = _purchaseService.getProduct(InAppPurchaseService.premiumSixMonthId);
      final yearlyProduct = _purchaseService.getProduct(InAppPurchaseService.premiumYearlyId);
      
      final allProductsLoaded = monthlyProduct != null && 
                               sixMonthProduct != null && 
                               yearlyProduct != null;
      
      // Ürünler yüklendiyse ve önceki build'de yoksa UI'ı güncelle
      if (allProductsLoaded && !_productsWereLoaded) {
        debugPrint('🔄 Products loaded in build(), updating UI...');
        _productsWereLoaded = true;
        setState(() {}); // UI'ı güncelle
      }
    });
    
    return Consumer<LanguageService>(
      builder: (context, languageService, child) {
        return Consumer<PremiumService>(
          builder: (context, premiumService, child) {
            // Kullanıcı premium olduysa ekranı kapat
            // Not: _onPurchaseCompleted() tarafından zaten kapatıldıysa tekrar kapatma
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              if (!mounted || _purchaseCompletedCalled) return;
              
              final isPremium = await premiumService.hasPremiumAccess();
              if (isPremium && mounted && !_purchaseCompletedCalled) {
                debugPrint('✅ User is premium (Consumer check), closing premium screen');
                _purchaseCompletedCalled = true; // Mark as handled
                Navigator.of(context).pop();
              }
            });
            
            return Scaffold(
              extendBody: true,
              bottomNavigationBar: null,
              body: AnimatedBuilder(
                animation: _backgroundColorAnimation,
                builder: (context, child) {
                  return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _backgroundColorAnimation.value ?? const Color(0xFF1E88E5),
                  const Color(0xFF0D47A1),
                  const Color(0xFF1A237E),
                ],
                stops: const [0.0, 0.6, 1.0],
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: MediaQuery.of(context).padding.top + 20,
                    bottom: MediaQuery.of(context).padding.bottom + 100,
                  ),
                  child: Column(
                    children: [
                      _buildHeroSection(),
                      const SizedBox(height: 8),
                      _buildFeaturesGrid(),
                      const SizedBox(height: 8),
                      _buildPricingSection(),
                      const SizedBox(height: 8),
                      _buildFooter(),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
            );
          },
        );
      },
    );
  }


  Widget _buildHeroSection() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.transparent,
              ],
              stops: const [0.7, 1.0],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.cyan.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 5,
              ),
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                blurRadius: 30,
                spreadRadius: 10,
              ),
            ],
          ),
          child: Hero(
            tag: 'app_logo',
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: _buildMainLogo(),
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        
        Text(
          AppLocalizations.of(context)!.alppremium,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.5,
            shadows: [
              Shadow(
                offset: Offset(0, 2),
                blurRadius: 4,
                color: Colors.black26,
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          AppLocalizations.of(context)!.accessAllFeatures,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white70,
            letterSpacing: 0.3,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildMainLogo() {
        return Image.asset(
      'assets/images/logo.png',
      width: 120,
      height: 120,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF1E88E5),
                const Color(0xFF26C6DA),
                const Color(0xFF0D47A1),
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red.shade400,
                size: 20,
              ),
              const SizedBox(height: 4),
              const Text(
                'ALP',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.5,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 1),
                      blurRadius: 2,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2),
              Icon(
                Icons.medical_services,
                color: Colors.green.shade400,
                size: 10,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFeaturesGrid() {
    final features = [
      {'icon': Icons.all_inclusive, 'title': AppLocalizations.of(context)!.accessAllQuestions},
      {'icon': Icons.quiz, 'title': AppLocalizations.of(context)!.unlimitedQuiz},
      {'icon': Icons.visibility, 'title': AppLocalizations.of(context)!.detailedExplanations},
      {'icon': Icons.error_outline, 'title': AppLocalizations.of(context)!.viewWrongQuestions},
      {'icon': Icons.assignment_turned_in, 'title': AppLocalizations.of(context)!.workOnDeficiencies},
      {'icon': Icons.analytics, 'title': AppLocalizations.of(context)!.advancedAnalytics},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.premiumFeatures,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.6,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
          itemCount: features.length,
          itemBuilder: (context, index) {
            return _buildCompactFeatureCard(features[index]);
          },
        ),
      ],
    );
  }

  Widget _buildCompactFeatureCard(Map<String, dynamic> feature) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.amber, Colors.orange],
              ),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.amber.withOpacity(0.3),
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Icon(
              feature['icon'] as IconData,
              color: Colors.white,
              size: 10,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            feature['title'] as String,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 12,
          ),
        ],
      ),
    );
  }

  Widget _buildPricingSection() {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double gap = screenWidth < 360 ? 6 : 10;
    
    // Get products from service
    final monthlyProduct = _purchaseService.getProduct(InAppPurchaseService.premiumMonthlyId);
    final sixMonthProduct = _purchaseService.getProduct(InAppPurchaseService.premiumSixMonthId);
    final yearlyProduct = _purchaseService.getProduct(InAppPurchaseService.premiumYearlyId);
    
    // Debug: Log product availability (sadece ilk yüklemede)
    final allLoaded = monthlyProduct != null && sixMonthProduct != null && yearlyProduct != null;
    if (allLoaded && !_productsWereLoaded) {
      debugPrint('🔍 Pricing Section - Products loaded:');
      debugPrint('   Monthly: ${monthlyProduct!.price}');
      debugPrint('   6 Month: ${sixMonthProduct!.price}');
      debugPrint('   Yearly: ${yearlyProduct!.price}');
      debugPrint('   Total products in service: ${_purchaseService.products.length}');
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.packageOptions,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
        _buildPricingCard(
          id: 'monthly',
          title: AppLocalizations.of(context)!.monthly,
          price: monthlyProduct?.price ?? 'Yükleniyor...',
          period: AppLocalizations.of(context)!.month,
          originalPrice: null,
          isPopular: false,
          productId: InAppPurchaseService.premiumMonthlyId,
          isAvailable: monthlyProduct != null,
        ),
        SizedBox(height: gap),
        _buildPricingCard(
          id: 'sixmonth',
          title: AppLocalizations.of(context)!.sixMonthly,
          price: sixMonthProduct?.price ?? 'Yükleniyor...',
          period: '6 ${AppLocalizations.of(context)!.months}',
          originalPrice: null,
          isPopular: false,
          productId: InAppPurchaseService.premiumSixMonthId,
          isAvailable: sixMonthProduct != null,
        ),
        SizedBox(height: gap),
        _buildPricingCard(
          id: 'yearly',
          title: AppLocalizations.of(context)!.yearly,
          price: yearlyProduct?.price ?? 'Yükleniyor...',
          period: AppLocalizations.of(context)!.year,
          originalPrice: monthlyProduct != null 
              ? _calculateOriginalPrice(monthlyProduct.price, 12)
              : null,
          isPopular: true,
          productId: InAppPurchaseService.premiumYearlyId,
          isAvailable: yearlyProduct != null,
        ),
      ],
    );
  }

  // Calculate original price for yearly (12x monthly)
  String _calculateOriginalPrice(String monthlyPrice, int months) {
    try {
      // Remove currency symbols and parse
      final cleanPrice = monthlyPrice.replaceAll(RegExp(r'[^\d,.]'), '').replaceAll(',', '.');
      final price = double.tryParse(cleanPrice);
      if (price != null) {
        final total = price * months;
        // Format back with currency symbol (try to detect from original)
        final currency = monthlyPrice.contains('₺') ? '₺' : 
                        monthlyPrice.contains('€') ? '€' : 
                        monthlyPrice.contains('£') ? '£' : '\$';
        return '$currency${total.toStringAsFixed(2).replaceAll('.', ',')}';
      }
    } catch (e) {
      debugPrint('Error calculating original price: $e');
    }
    return '\$120'; // Fallback
  }

  Widget _buildPricingCard({
    required String id,
    required String title,
    required String price,
    required String period,
    required String? originalPrice,
    required bool isPopular,
    required String productId,
    bool isAvailable = true,
  }) {
    final isSelected = _selectedPlan == id;
    
    return GestureDetector(
      onTap: () {
        debugPrint('🖱️ Pricing card tapped: $id (Product ID: $productId)');
        debugPrint('   isAvailable: $isAvailable');
        debugPrint('   Current selected plan: $_selectedPlan');
        
        if (!isAvailable) {
          debugPrint('   ⚠️ Product not available, showing warning');
          // Ürün yüklenmemiş, uyarı göster
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.productLoadingWait(productId)),
              backgroundColor: Colors.orange,
              duration: const Duration(seconds: 3),
            ),
          );
          // Ürünleri yeniden yükle
          _purchaseService.reloadProducts().then((_) {
            if (mounted) {
              setState(() {}); // UI'ı güncelle
            }
          });
          return;
        }
        debugPrint('   ✅ Product available, selecting plan: $id');
        setState(() => _selectedPlan = id);
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: isSelected 
              ? const LinearGradient(
                  colors: [Colors.amber, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.white.withOpacity(0.05),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected 
                ? Colors.amber 
                : Colors.white.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: isSelected 
                  ? Colors.amber.withOpacity(0.3)
                  : Colors.black.withOpacity(0.1),
              blurRadius: isSelected ? 8 : 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.white : Colors.transparent,
                border: Border.all(
                  color: isSelected ? Colors.white : Colors.white70,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      color: Colors.black,
                      size: 10,
                    )
                  : null,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.black : Colors.white,
                        ),
                      ),
                      if (isPopular) ...[
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.black : Colors.amber,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.popular,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.black : Colors.white,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '/$period',
                        style: TextStyle(
                          fontSize: 10,
                          color: isSelected 
                              ? Colors.black.withOpacity(0.7) 
                              : Colors.white70,
                        ),
                      ),
                      if (originalPrice != null) ...[
                        const SizedBox(width: 6),
                        Text(
                          originalPrice,
                          style: TextStyle(
                            fontSize: 10,
                            color: isSelected 
                                ? Colors.black.withOpacity(0.5)
                                : Colors.white54,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: _isProcessingPurchase ? null : () {
              debugPrint('🔘 Premium button pressed');
              debugPrint('   Selected plan: $_selectedPlan');
              debugPrint('   Is processing: $_isProcessingPurchase');
              _purchaseSelectedPlan();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              elevation: 0,
              disabledBackgroundColor: Colors.transparent,
            ).copyWith(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: _isProcessingPurchase 
                      ? [Colors.grey, Colors.grey.shade700]
                      : [Colors.amber, Colors.orange],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: _isProcessingPurchase 
                        ? Colors.grey.withOpacity(0.3)
                        : Colors.amber.withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: _isProcessingPurchase
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'İşlem devam ediyor...',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    : Text(
                  AppLocalizations.of(context)!.goToPremium,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        // Apple Guideline 3.1.2: Functional links to Privacy Policy and EULA must be visible in the purchase flow
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFooterLink(
              label: AppLocalizations.of(context)!.termsPrivacyPolicy,
              onTap: () => _openUrl(_privacyPolicyUrl),
            ),
            Text(
              '  ·  ',
              style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 12),
            ),
            _buildFooterLink(
              label: AppLocalizations.of(context)!.termsEula,
              onTap: () => _openUrl(_eulaUrl),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () async {
                debugPrint('🔄 Restore button pressed by user');
                await _purchaseService.restorePurchases();
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                AppLocalizations.of(context)!.restorePurchases,
                style: const TextStyle(
                  color: Colors.cyan,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () => _showTermsAndConditions(),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                AppLocalizations.of(context)!.termsAndConditions,
                style: const TextStyle(
                  color: Colors.cyan,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFooterLink({required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.cyan,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
          decorationColor: Colors.cyan,
        ),
      ),
    );
  }

  Future<void> _purchaseSelectedPlan() async {
    debugPrint('═══════════════════════════════════════════════════════');
    debugPrint('🛒 PURCHASE BUTTON PRESSED');
    debugPrint('═══════════════════════════════════════════════════════');
    
    if (_isProcessingPurchase) {
      debugPrint('⚠️ Satın alma zaten devam ediyor');
      return;
    }
    
    String productId;
    switch (_selectedPlan) {
      case 'monthly':
        productId = InAppPurchaseService.premiumMonthlyId;
        break;
      case 'sixmonth':
        productId = InAppPurchaseService.premiumSixMonthId;
        break;
      case 'yearly':
        productId = InAppPurchaseService.premiumYearlyId;
        break;
      default:
        productId = InAppPurchaseService.premiumMonthlyId;
    }

    debugPrint('📦 Selected Plan: $_selectedPlan');
    debugPrint('📦 Product ID: $productId');
    debugPrint('📦 Current products in service: ${_purchaseService.products.length}');
    for (var p in _purchaseService.products) {
      debugPrint('   - ${p.id}: ${p.price}');
    }

    if (mounted) {
      setState(() {
        _isProcessingPurchase = true;
      });
    }

    try {
      debugPrint('🔧 Step 1: Initializing purchase service...');
      await _purchaseService.initialize();
      debugPrint('   ✅ Service initialized');
      
      debugPrint('🔧 Step 2: Reloading products...');
      // Ürünleri yeniden yükle (TestFlight'ta gecikme olabilir)
      await _purchaseService.reloadProducts();
      debugPrint('   ✅ Products reloaded, total: ${_purchaseService.products.length}');
      for (var p in _purchaseService.products) {
        debugPrint('      - ${p.id}: ${p.price}');
      }
      
      debugPrint('🔧 Step 3: Looking for product: $productId');
      // Ürün yüklenene kadar retry (max 5 deneme)
      ProductDetails? product;
      for (int i = 0; i < 5; i++) {
        await Future.delayed(Duration(milliseconds: 500 + (i * 200)));
        product = _purchaseService.getProduct(productId);
        if (product != null) {
          debugPrint('   ✅ Ürün bulundu (deneme ${i + 1}/5): ${product.title} - ${product.price}');
          break;
        }
        debugPrint('   ⏳ Ürün aranıyor... (deneme ${i + 1}/5) - Product ID: $productId');
        debugPrint('      Mevcut ürünler: ${_purchaseService.products.map((p) => p.id).join(", ")}');
      }
      
      if (product == null) {
        debugPrint('   ❌ ÜRÜN BULUNAMADI!');
        // Ürün bulunamadı, detaylı hata mesajı göster
        final availableProducts = _purchaseService.products.map((p) => '${p.id} (${p.price})').toList();
        final allProductIds = [
          InAppPurchaseService.premiumMonthlyId,
          InAppPurchaseService.premiumSixMonthId,
          InAppPurchaseService.premiumYearlyId,
        ];
        
        debugPrint('   🔍 DEBUG INFO:');
        debugPrint('      Aranan Product ID: $productId');
        debugPrint('      Yüklenen ürünler (${availableProducts.length}): ${availableProducts.isEmpty ? "Hiçbiri" : availableProducts.join(", ")}');
        debugPrint('      Beklenen Product ID\'ler: ${allProductIds.join(", ")}');
        debugPrint('      Eşleşme kontrolü:');
        for (var expectedId in allProductIds) {
          final found = _purchaseService.products.any((p) => p.id == expectedId);
          debugPrint('         - $expectedId: ${found ? "✅ BULUNDU" : "❌ BULUNAMADI"}');
        }
        
        throw 'Ürün yüklenemedi: $productId\n\n'
              'Aranan ürün: $productId\n'
              'Yüklenen ürünler (${availableProducts.length}): ${availableProducts.isEmpty ? "Hiçbiri" : availableProducts.join(", ")}\n\n'
              'Beklenen ürünler: ${allProductIds.join(", ")}\n\n'
              'Lütfen internet bağlantınızı kontrol edip tekrar deneyin.';
      }
      
      debugPrint('🔧 Step 4: Starting purchase...');
      debugPrint('   Product: ${product.title} - ${product.price}');
      debugPrint('   Product ID: ${product.id}');
      
      final success = await _purchaseService.buyProductById(productId);
      
      debugPrint('🔧 Step 5: Purchase initiated, success: $success');
      
      if (!success && mounted) {
        setState(() {
          _isProcessingPurchase = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.purchaseFailed),
            backgroundColor: Colors.orange,
            duration: const Duration(seconds: 2),
          ),
        );
      } else {
        // Satın alma başlatıldı - tamamlanana kadar bekle (stream veya polling ile)
        _startPurchaseCompletePolling();
      }
      debugPrint('═══════════════════════════════════════════════════════');
      debugPrint('✅ PURCHASE FLOW COMPLETED');
      debugPrint('═══════════════════════════════════════════════════════');
    } catch (e, stackTrace) {
      debugPrint('═══════════════════════════════════════════════════════');
      debugPrint('❌ PURCHASE ERROR');
      debugPrint('═══════════════════════════════════════════════════════');
      debugPrint('Error: $e');
      debugPrint('Stack trace: $stackTrace');
      debugPrint('Selected plan: $_selectedPlan');
      debugPrint('Product ID: $productId');
      debugPrint('Available products: ${_purchaseService.products.map((p) => p.id).join(", ")}');
      debugPrint('═══════════════════════════════════════════════════════');
      
      if (mounted) {
        setState(() {
          _isProcessingPurchase = false;
        });
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Hata: ${e.toString()}'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
  }

  static const String _privacyPolicyUrl = 'https://anestezi.web.app/privacy-policy.html';
  static const String _eulaUrl = 'https://www.apple.com/legal/internet-services/itunes/dev/stdeula/';

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  void _showTermsAndConditions() {
    final loc = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF1A237E),
                const Color(0xFF0D47A1),
                const Color(0xFF1E88E5),
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.description_outlined, color: Colors.amber, size: 28),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          loc.termsAndConditions,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    loc.termsLegalIntro,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.95),
                      fontSize: 14,
                      height: 1.45,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _buildTermsBullet(loc.termsBulletStore),
                _buildTermsBullet(loc.termsBulletRefund),
                _buildTermsBullet(loc.termsBulletDisclaimer),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline_rounded, size: 18, color: Colors.amber.shade200),
                      const SizedBox(width: 8),
                      Text(
                        loc.subscriptionInfoTitle,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                _buildTermsBullet(loc.subscriptionAutoRenew),
                _buildTermsBullet(loc.subscriptionCancelAnytime),
                _buildTermsBullet(loc.subscriptionChargedToAccount),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    loc.termsContent,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildTermsLinkButton(
                          label: loc.termsPrivacyPolicy,
                          icon: Icons.privacy_tip_outlined,
                          onTap: () => _openUrl(_privacyPolicyUrl),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildTermsLinkButton(
                          label: loc.termsEula,
                          icon: Icons.gavel_outlined,
                          onTap: () => _openUrl(_eulaUrl),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.2),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        loc.ok,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTermsBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Container(
              width: 5,
              height: 5,
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTermsLinkButton({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.12),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withOpacity(0.25)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.cyan, size: 20),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
