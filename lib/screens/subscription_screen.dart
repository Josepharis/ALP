import 'package:flutter/material.dart';
import '../services/in_app_purchase_service.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  
  final InAppPurchaseService _purchaseService = InAppPurchaseService();
  int _selectedPlan = 1; // 0: Aylık, 1: Yıllık, 2: Yaşam Boyu
  
  @override
  void initState() {
    super.initState();
    _setupAnimations();
  }
  
  void _setupAnimations() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.05),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));
    
    _animationController.forward();
  }
  
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 768;
    final isDesktop = screenWidth > 1024;
    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0F0F23),
              Color(0xFF1A1A2E),
              Color(0xFF16213E),
            ],
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: isDesktop 
                ? _buildDesktopLayout()
                : _buildMobileLayout(isTablet),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side - Hero and Features
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(true),
                const SizedBox(height: 24),
                _buildHeroSection(true),
                const SizedBox(height: 32),
                _buildFeaturesSection(true),
              ],
            ),
          ),
          const SizedBox(width: 32),
          // Right side - Pricing Cards
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const SizedBox(height: 60),
                _buildPricingCards(true),
                const SizedBox(height: 24),
                _buildFooter(true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(bool isTablet) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: isTablet ? 24 : 16,
        vertical: 8,
      ),
      child: Column(
        children: [
          _buildHeader(isTablet),
          const SizedBox(height: 16),
          _buildHeroSection(isTablet),
          const SizedBox(height: 20),
          _buildPricingCards(isTablet),
          const SizedBox(height: 20),
          _buildFeaturesSection(isTablet),
          const SizedBox(height: 20),
          _buildFooter(isTablet),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
  
  Widget _buildHeader(bool isTablet) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isTablet ? 8 : 4, vertical: 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.amber, Colors.orange],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'PREMIUM',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 11,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildHeroSection(bool isTablet) {
    return Column(
      children: [
        Container(
          width: isTablet ? 50 : 40,
          height: isTablet ? 50 : 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Colors.amber, Colors.orange],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.amber.withOpacity(0.4),
                blurRadius: 15,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Icon(
            Icons.star,
            size: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'ALP Premium\'a Geçin',
          style: TextStyle(
            fontSize: isTablet ? 24 : 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          'Tüm sorulara erişim, sınırsız quiz tekrarı,\nyanlış sorularınızı görüntüleme ve eksiklerinizi çalışma',
          style: TextStyle(
            fontSize: isTablet ? 13 : 12,
            color: Colors.white70,
            height: 1.3,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.green, Colors.teal],
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'İlk 2 soru ücretsiz',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildPricingCards(bool isTablet) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Paket Seçenekleri',
          style: TextStyle(
            fontSize: isTablet ? 20 : 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        
        // Modern pricing cards with better spacing
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              _buildPricingCard(
                index: 0,
                title: 'Aylık',
                price: '\$10.00',
                period: 'ay',
                originalPrice: null,
                isPopular: false,
                productId: InAppPurchaseService.premiumMonthlyId,
                isTablet: isTablet,
              ),
              const SizedBox(height: 8),
              _buildPricingCard(
                index: 1,
                title: '6 Aylık',
                price: '\$50.00',
                period: '6 ay',
                originalPrice: '\$60.00',
                isPopular: true,
                productId: InAppPurchaseService.premiumSixMonthId,
                isTablet: isTablet,
              ),
              const SizedBox(height: 8),
              _buildPricingCard(
                index: 2,
                title: 'Yıllık',
                price: '\$90.00',
                period: 'yıl',
                originalPrice: '\$120.00',
                isPopular: false,
                productId: InAppPurchaseService.premiumYearlyId,
                isTablet: isTablet,
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  Widget _buildPricingCard({
    required int index,
    required String title,
    required String price,
    required String period,
    required String? originalPrice,
    required bool isPopular,
    required String productId,
    required bool isTablet,
  }) {
    final isSelected = _selectedPlan == index;
    
    return GestureDetector(
      onTap: () => setState(() => _selectedPlan = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected 
              ? Colors.amber.withOpacity(0.15)
              : Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected 
                ? Colors.amber
                : isPopular 
                    ? Colors.orange.withOpacity(0.5)
                    : Colors.white.withOpacity(0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Radio button
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.amber : Colors.white.withOpacity(0.5),
                  width: 2,
                ),
                color: isSelected ? Colors.amber : Colors.transparent,
              ),
              child: isSelected 
                ? const Icon(Icons.check, size: 12, color: Colors.black)
                : null,
            ),
            const SizedBox(width: 12),
            
            // Plan info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: isTablet ? 16 : 15,
                          fontWeight: FontWeight.bold,
                          color: isSelected 
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                      if (isPopular) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'POPÜLER',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: isTablet ? 20 : 18,
                          fontWeight: FontWeight.bold,
                          color: isSelected 
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '/$period',
                        style: TextStyle(
                          fontSize: isTablet ? 12 : 11,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      if (originalPrice != null) ...[
                        const SizedBox(width: 8),
                        Text(
                          originalPrice,
                          style: TextStyle(
                            fontSize: isTablet ? 12 : 11,
                            color: Colors.white.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            
            // Savings badge for yearly
            if (isPopular && originalPrice != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.green.withOpacity(0.5)),
                ),
                child: Text(
                  '2 ay ücretsiz',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildFeaturesSection(bool isTablet) {
    final features = [
      {'icon': Icons.all_inclusive, 'title': 'Tüm Sorulara Erişim', 'subtitle': 'Tüm kategorilerde sınırsız erişim'},
      {'icon': Icons.quiz, 'title': 'Sınırsız Quiz Tekrarı', 'subtitle': 'İstediğiniz kadar quiz çözebilirsiniz'},
      {'icon': Icons.visibility, 'title': 'Detaylı Açıklamalar', 'subtitle': 'Her sorunun detaylı açıklamasını görün'},
      {'icon': Icons.error_outline, 'title': 'Yanlış Soruları Görüntüle', 'subtitle': 'Yaptığınız yanlış soruları tekrar çözün'},
      {'icon': Icons.assignment_turned_in, 'title': 'Eksiklerinizi Çalışın', 'subtitle': 'Zayıf olduğunuz konulara odaklanın'},
    ];
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Premium Özellikler',
          style: TextStyle(
            fontSize: isTablet ? 18 : 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        
        // Compact features grid
        if (isTablet)
          Row(
            children: [
              Expanded(
                child: Column(
                  children: features.take(3).map((feature) => 
                    _buildFeatureItem(
                      icon: feature['icon'] as IconData,
                      title: feature['title'] as String,
                      subtitle: feature['subtitle'] as String,
                      isTablet: isTablet,
                    ),
                  ).toList(),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  children: features.skip(3).map((feature) => 
                    _buildFeatureItem(
                      icon: feature['icon'] as IconData,
                      title: feature['title'] as String,
                      subtitle: feature['subtitle'] as String,
                      isTablet: isTablet,
                    ),
                  ).toList(),
                ),
              ),
            ],
          )
        else
          Column(
            children: features.map((feature) => 
              _buildFeatureItem(
                icon: feature['icon'] as IconData,
                title: feature['title'] as String,
                subtitle: feature['subtitle'] as String,
                isTablet: isTablet,
              ),
            ).toList(),
          ),
      ],
    );
  }
  
  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool isTablet,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.amber.withOpacity(0.2),
                  Colors.orange.withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: Colors.amber,
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: isTablet ? 15 : 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: isTablet ? 12 : 11,
                    color: Colors.white.withOpacity(0.7),
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 20,
          ),
        ],
      ),
    );
  }
  
  Widget _buildFooter(bool isTablet) {
    return Column(
      children: [
        // Main CTA Button
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.amber, Colors.orange],
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.amber.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () => _purchaseSelectedPlan(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.symmetric(vertical: isTablet ? 18 : 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.black, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Premium\'a Başla',
                  style: TextStyle(
                    fontSize: isTablet ? 16 : 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        
        const SizedBox(height: 12),
        
        // Trust indicators
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.security, color: Colors.green, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    'Güvenli Ödeme',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 24),
                  Icon(Icons.refresh, color: Colors.blue, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    'İlk 2 soru ücretsiz',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'İstediğiniz zaman iptal edebilirsiniz',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.white.withOpacity(0.6),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 12),
        
        // Footer links
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () => _purchaseService.restorePurchases(),
              child: Text(
                'Satın Almaları Geri Yükle',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: isTablet ? 12 : 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () => _showTermsAndConditions(),
              child: Text(
                'Şartlar ve Koşullar',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: isTablet ? 12 : 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
  
  Future<void> _purchaseSelectedPlan() async {
    final productIds = [
      InAppPurchaseService.premiumMonthlyId,
      InAppPurchaseService.premiumSixMonthId,
      InAppPurchaseService.premiumYearlyId,
    ];
    
    final selectedProductId = productIds[_selectedPlan];
    
    try {
      final success = await _purchaseService.buyProductById(selectedProductId);
      if (success) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Satın alma işlemi başlatıldı'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Satın alma işlemi başlatılamadı'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Hata: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
  
  void _showTermsAndConditions() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1A237E),
        title: const Text(
          'Şartlar ve Koşullar',
          style: TextStyle(color: Colors.white),
        ),
        content: const SingleChildScrollView(
          child: Text(
            'Bu uygulama içi satın alım hizmeti Apple App Store ve Google Play Store şartlarına tabidir. Satın alımlar iade edilemez. Premium özellikler aktif olduğu sürece kullanılabilir.',
            style: TextStyle(color: Colors.white70),
          ),
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
}