import 'dart:ui';

import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';

import '../services/user_service.dart';
import '../models/user_activity.dart';
import 'dart:io';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../services/leaderboard_service.dart';
import 'dart:math' as math;
import '../utils/event_bus.dart';
import '../services/device_service.dart';
import '../models/device_info.dart';
import '../services/premium_service.dart';
import '../services/in_app_purchase_service.dart';
import 'premium_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthService _authService = AuthService();

  final UserService _userService = UserService();
  final LeaderboardService _leaderboardService = LeaderboardService();
  final DeviceService _deviceService = DeviceService();
  final ImagePicker _imagePicker = ImagePicker();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  StreamSubscription? _rankSubscription;
  StreamSubscription? _mistakesSubscription;
  int _currentRank = 0;

  bool _isLoading = false;
  bool _deviceCheckDone = false; // Cihaz kontrolü yapıldı mı?

  Map<String, dynamic>? _userProfile;
  UserActivity? _userActivity;
  File? _imageFile;
  final PremiumService _premiumService = PremiumService();
  bool? _isPremium;
  Map<String, dynamic>? _subscriptionInfo;

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    _loadUserData();
    _subscribeToRank();

    // EventBus dinleyicisi ekle - hızlı güncelleme için
    _mistakesSubscription = EventBus().mistakesUpdatedStream.listen((event) {
      if (mounted) {
        // Hemen setState yaparak loading'i kapat
        setState(() {
          _isLoading = false;
        });
        // Sonra arka planda verileri güncelle
        _loadUserData();
      }
    });

    // PremiumService listener ekle - premium durumu değiştiğinde yenile
    _premiumService.addListener(_onPremiumStatusChanged);
  }

  void _onPremiumStatusChanged() {
    if (mounted) {
      debugPrint('🔄 Premium status changed, refreshing profile...');
      _loadUserData();
    }
  }

  void _subscribeToRank() {
    final userId = _auth.currentUser?.uid;
    if (userId != null) {
      _rankSubscription = _leaderboardService.getUserRankStream().listen((
        rank,
      ) {
        if (mounted) {
          setState(() {
            _currentRank = rank;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    // PremiumService listener'ı kaldır
    _premiumService.removeListener(_onPremiumStatusChanged);

    // StreamSubscription'ları güvenli şekilde iptal et
    try {
      if (_rankSubscription != null) {
        _rankSubscription!.cancel();
        _rankSubscription = null;
      }
    } catch (e) {}

    try {
      if (_mistakesSubscription != null) {
        _mistakesSubscription!.cancel();
        _mistakesSubscription = null;
      }
    } catch (e) {}

    super.dispose();
  }

  Future<void> _loadUserData() async {
    try {
      // Kullanıcı profil bilgilerini getir
      final userDoc =
          await _firestore
              .collection('users')
              .doc(_authService.currentUser!.uid)
              .get();

      if (userDoc.exists) {
        _userProfile = userDoc.data();
      }

      // Kullanıcı aktivite bilgilerini getir
      final userActivityDoc =
          await _firestore
              .collection('userActivities')
              .doc(_authService.currentUser!.uid)
              .get();

      if (userActivityDoc.exists) {
        try {
          _userActivity = UserActivity.fromFirestore(userActivityDoc);
        } catch (e) {}
      }

      // Abonelik durumunu kontrol et
      await _loadSubscriptionInfo();

      if (mounted) {
        setState(() {});
      }
    } catch (e) {}
  }

  Future<void> _loadSubscriptionInfo() async {
    try {
      final userId = _authService.currentUser?.uid;
      if (userId == null) {
        _isPremium = false;
        _subscriptionInfo = null;
        return;
      }

      // Premium durumunu kontrol et
      _isPremium = await _premiumService.hasPremiumAccess();

      if (_isPremium == true) {
        // Abonelik bilgilerini Firestore'dan çek
        final purchasesSnapshot =
            await _firestore
                .collection('users')
                .doc(userId)
                .collection('purchases')
                .orderBy('purchasedAt', descending: true)
                .limit(1)
                .get();

        if (purchasesSnapshot.docs.isNotEmpty) {
          final purchaseData = purchasesSnapshot.docs.first.data();
          final productId = purchaseData['productId'] as String? ?? '';
          final transactionDate = purchaseData['transactionDate'] as String?;

          // Abonelik türünü belirle
          String subscriptionType = '';
          if (productId == InAppPurchaseService.monthlySubscriptionId) {
            subscriptionType = 'monthly';
          } else if (productId == InAppPurchaseService.yearlySubscriptionId) {
            subscriptionType = 'yearly';
          } else if (productId == InAppPurchaseService.sixMonthSubscriptionId) {
            subscriptionType = 'sixMonth';
          } else if (productId == InAppPurchaseService.lifetimePurchaseId) {
            subscriptionType = 'lifetime';
          }

          // Bitiş tarihini hesapla (basit bir tahmin - gerçek uygulamada receipt doğrulaması gerekir)
          DateTime? expiresOn;
          if (transactionDate != null && subscriptionType != 'lifetime') {
            try {
              final purchaseDate = DateTime.fromMillisecondsSinceEpoch(
                int.parse(transactionDate),
              );
              if (subscriptionType == 'monthly') {
                expiresOn = purchaseDate.add(const Duration(days: 30));
              } else if (subscriptionType == 'sixMonth') {
                expiresOn = purchaseDate.add(const Duration(days: 180));
              } else if (subscriptionType == 'yearly') {
                expiresOn = purchaseDate.add(const Duration(days: 365));
              }
            } catch (e) {
              // Tarih parse hatası
            }
          }

          _subscriptionInfo = {
            'type': subscriptionType,
            'productId': productId,
            'expiresOn': expiresOn,
            'isLifetime': subscriptionType == 'lifetime',
          };
        }
      } else {
        _subscriptionInfo = null;
      }
    } catch (e) {
      _isPremium = false;
      _subscriptionInfo = null;
    }
  }

  Future<void> _pickImage() async {
    try {
      // Ekran ortasında dialog göster - Tüm cihazlarda çalışacak
      final result = await showDialog<String>(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          final isTablet = size.shortestSide >= 600;

          // Responsive sizing
          final dialogWidth =
              isTablet
                  ? math.min(size.width * 0.5, 400.0)
                  : math.min(size.width * 0.85, 320.0);
          final dialogHeight = isTablet ? 280.0 : 240.0;

          return Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              width: dialogWidth,
              height: dialogHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.indigo.shade900, Colors.purple.shade900],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Header
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.indigo.shade800,
                          Colors.purple.shade800,
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.profilePhoto,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Content
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildImageOptionDialog(
                                icon: Icons.photo_library,
                                title:
                                    AppLocalizations.of(
                                      context,
                                    )!.selectFromGallery,
                                onTap: () => Navigator.pop(context, 'gallery'),
                                isTablet: isTablet,
                              ),
                              _buildImageOptionDialog(
                                icon: Icons.camera_alt,
                                title: AppLocalizations.of(context)!.takePhoto,
                                onTap: () => Navigator.pop(context, 'camera'),
                                isTablet: isTablet,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

      // Dialog kapandıktan sonra seçimi işle
      if (result != null && mounted) {
        setState(() {
          _isLoading = true;
        });

        try {
          XFile? image;
          if (result == 'gallery') {
            image = await _imagePicker.pickImage(
              source: ImageSource.gallery,
              maxWidth: 800,
              maxHeight: 800,
              imageQuality: 85,
            );
          } else if (result == 'camera') {
            image = await _imagePicker.pickImage(
              source: ImageSource.camera,
              maxWidth: 800,
              maxHeight: 800,
              imageQuality: 85,
            );
          }

          if (image != null && mounted) {
            setState(() {
              _imageFile = File(image!.path);
            });
            await _uploadImage();
          }
        } catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppLocalizations.of(context)!.imageSelectionError,
                ),
                backgroundColor: Colors.red.shade700,
              ),
            );
          }
        } finally {
          if (mounted) {
            setState(() {
              _isLoading = false;
            });
          }
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.generalError),
            backgroundColor: Colors.red.shade700,
          ),
        );
      }
    }
  }

  Widget _buildImageOptionDialog({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required bool isTablet,
  }) {
    // Dialog için optimize edilmiş boyutlar
    final buttonWidth = isTablet ? 140.0 : 110.0;
    final buttonHeight = isTablet ? 120.0 : 100.0;
    final iconSize = isTablet ? 32.0 : 28.0;
    final fontSize = isTablet ? 13.0 : 11.0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white, size: iconSize),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _uploadImage() async {
    if (_imageFile == null) {
      // Eğer dosya yoksa loading'i kapat
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      return;
    }

    try {
      // Loading zaten _pickImage'de true yapıldı, tekrar yapmaya gerek yok

      final user = _auth.currentUser;
      if (user == null) {
        if (mounted) {
          setState(() {
            _isLoading = false;
          });
        }
        return;
      }

      // Eski profil fotoğrafını sil
      if (user.photoURL != null) {
        try {
          final oldImageRef = _storage.refFromURL(user.photoURL!);
          await oldImageRef.delete();
        } catch (e) {}
      }

      // Yeni fotoğrafı yükle
      final storageRef = _storage
          .ref()
          .child('profile_images')
          .child('${user.uid}_${DateTime.now().millisecondsSinceEpoch}.jpg');

      await storageRef.putFile(_imageFile!);
      final downloadUrl = await storageRef.getDownloadURL();

      // Kullanıcı profilini güncelle (Firebase Auth)
      await user.updatePhotoURL(downloadUrl);

      // Firestore'da kullanıcı dokümanını güncelle
      await _firestore.collection('users').doc(user.uid).update({
        'profileImageUrl': downloadUrl,
        'lastUpdated': FieldValue.serverTimestamp(),
      });

      // Kullanıcı verilerini yeniden yükle
      await _loadUserData();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.photoUploadError),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding + 80),
                  child: Column(
                    children: [
                      _buildProfileHeader(),
                      _buildStats(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showSettingsModal(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final topPadding = MediaQuery.of(context).viewPadding.top;
    final bottomNavBarHeight = 80.0; // Alt navigasyon çubuğu yüksekliği

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        // Kullanılabilir ekran yüksekliğini hesapla
        final availableHeight = size.height - topPadding - bottomPadding;

        // Modal yüksekliğini hesapla - ekranın %85'i veya maksimum 700px
        // Daha fazla alan ver ki tüm içerik gözüksün
        final modalHeight = math.min(availableHeight * 0.85, 700.0);

        // Minimum yükseklik garantisi - küçük ekranlar için
        final finalHeight = math.max(modalHeight, 500.0);

        return Container(
          height: finalHeight,
          margin: EdgeInsets.only(
            bottom:
                bottomNavBarHeight + 20, // Alt navigasyon çubuğundan uzaklaştır
            left: 16,
            right: 16,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF0F172A).withOpacity(0.95), // deep obsidian
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.white.withOpacity(0.08),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 24,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: SafeArea(
            child: Column(
              children: [
                // Başlık kısmı
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white.withOpacity(0.08),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.settings,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () => Navigator.pop(context),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                ),

                // İçerik kısmı - tüm modalın geri kalanını kaplar
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        12,
                        8,
                        12,
                        bottomPadding +
                            20, // Alt padding + navigation bar için ekstra alan
                      ),
                      child: Column(
                        children: [
                          _buildSettingItem(
                            AppLocalizations.of(context)!.editProfile,
                            Icons.edit,
                            context,
                            onTap: () => _showEditProfileModal(context),
                          ),

                          // Abonelik durumu bölümü
                          _buildSubscriptionStatusItem(context),

                          _buildSettingItem(
                            AppLocalizations.of(context)!.myDevices,
                            Icons.devices,
                            context,
                            onTap: () => _showDeviceManagementModal(context),
                          ),
                          _buildSettingItem(
                            AppLocalizations.of(context)!.privacy,
                            Icons.lock,
                            context,
                            onTap: () => _showPrivacySettingsModal(context),
                          ),
                          _buildSettingItem(
                            AppLocalizations.of(context)!.help,
                            Icons.help,
                            context,
                            onTap: () => _showHelpModal(context),
                          ),
                          _buildSettingItem(
                            AppLocalizations.of(context)!.deleteAccount,
                            Icons.delete_forever,
                            context,
                            onTap: () => _showDeleteAccountDialog(context),
                          ),
                          _buildSettingItem(
                            AppLocalizations.of(context)!.logOut,
                            Icons.exit_to_app,
                            context,
                            onTap: () async {
                              // Çıkış onay dialogu göster
                              final shouldSignOut = await showDialog<bool>(
                                context: context,
                                builder:
                                    (context) => AlertDialog(
                                      backgroundColor: Colors.transparent,
                                      content: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Colors.indigo.shade900,
                                              Colors.black,
                                            ],
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                0.3,
                                              ),
                                              blurRadius: 20,
                                              spreadRadius: 5,
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(24),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              // İkon
                                              Container(
                                                padding: const EdgeInsets.all(
                                                  16,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.red.withOpacity(
                                                    0.2,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: const Icon(
                                                  Icons.logout,
                                                  color: Colors.red,
                                                  size: 32,
                                                ),
                                              ),
                                              const SizedBox(height: 16),
                                              // Başlık
                                              Text(
                                                AppLocalizations.of(
                                                  context,
                                                )!.logOutTitle,
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              // İçerik
                                              Text(
                                                AppLocalizations.of(
                                                  context,
                                                )!.logOutMessage,
                                                style: const TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 16,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              const SizedBox(height: 24),
                                              // Butonlar
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: TextButton(
                                                      onPressed:
                                                          () => Navigator.pop(
                                                            context,
                                                            false,
                                                          ),
                                                      style: TextButton.styleFrom(
                                                        padding:
                                                            const EdgeInsets.symmetric(
                                                              vertical: 12,
                                                            ),
                                                      ),
                                                      child: Text(
                                                        AppLocalizations.of(
                                                          context,
                                                        )!.cancel,
                                                        style: const TextStyle(
                                                          color: Colors.white70,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 12),
                                                  Expanded(
                                                    child: ElevatedButton(
                                                      onPressed:
                                                          () => Navigator.pop(
                                                            context,
                                                            true,
                                                          ),
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.red,
                                                        padding:
                                                            const EdgeInsets.symmetric(
                                                              vertical: 12,
                                                            ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                8,
                                                              ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        AppLocalizations.of(
                                                          context,
                                                        )!.logOut,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                              );

                              if (shouldSignOut == true) {
                                // 1. ÖNCE stream'leri iptal et
                                try {
                                  if (_rankSubscription != null) {
                                    await _rankSubscription!.cancel();
                                    _rankSubscription = null;
                                  }
                                  if (_mistakesSubscription != null) {
                                    await _mistakesSubscription!.cancel();
                                    _mistakesSubscription = null;
                                  }
                                } catch (e) {
                                  // Stream iptal hatası (devam ediliyor)
                                }

                                // 2. SONRA Firebase çıkış yap (bu işlem tüm stream'leri temizler)
                                try {
                                  await _authService.signOut();
                                } catch (e) {
                                  // Çıkış hatası olsa bile devam et
                                }

                                // 3. EN SON login sayfasına yönlendir
                                if (mounted) {
                                  try {
                                    Navigator.of(
                                      context,
                                      rootNavigator: true,
                                    ).pushNamedAndRemoveUntil(
                                      '/login',
                                      (route) => false,
                                    );
                                  } catch (e) {
                                    // Alternatif navigasyon yöntemi
                                    if (mounted) {
                                      Navigator.of(
                                        context,
                                      ).pushReplacementNamed('/login');
                                    }
                                  }
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Profil düzenleme modalı
  void _showEditProfileModal(BuildContext context) {
    final nameController = TextEditingController(
      text: _userProfile?['displayName'] ?? '',
    );
    final titleController = TextEditingController(
      text: _userProfile?['title'] ?? '',
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A).withOpacity(0.95), // deep obsidian
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              border: Border(
                top: BorderSide(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
                left: BorderSide(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
                right: BorderSide(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 24,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 24,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.editProfileTitle,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    TextField(
                      controller: nameController,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.nameLabel,
                        labelStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 13,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Colors.indigo,
                            width: 2,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: titleController,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      decoration: InputDecoration(
                        labelText: AppLocalizations.of(context)!.titleLabel,
                        labelStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 13,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Colors.indigo,
                            width: 2,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () => Navigator.pop(context),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.cancel,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {
                              final success = await _userService
                                  .updateUserProfile(
                                    displayName: nameController.text.trim(),
                                    title: titleController.text.trim(),
                                    phone: '', // Phone field removed
                                  );
                              if (success && context.mounted) {
                                Navigator.pop(context);
                                _loadUserData();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      AppLocalizations.of(
                                        context,
                                      )!.profileInformationUpdated,
                                    ),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.save,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }

  // Gizlilik ayarları modalı
  void _showPrivacySettingsModal(BuildContext context) {
    bool showProfile =
        _userProfile?['privacySettings']?['showProfileToOthers'] ?? true;
    bool shareUsage =
        _userProfile?['privacySettings']?['shareUsageData'] ?? true;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => StatefulBuilder(
            builder:
                (context, setState) => Container(
                  decoration: BoxDecoration(
                    color: const Color(
                      0xFF0F172A,
                    ).withOpacity(0.95), // deep obsidian
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    border: Border(
                      top: BorderSide(
                        color: Colors.white.withOpacity(0.08),
                        width: 1.5,
                      ),
                      left: BorderSide(
                        color: Colors.white.withOpacity(0.08),
                        width: 1.5,
                      ),
                      right: BorderSide(
                        color: Colors.white.withOpacity(0.08),
                        width: 1.5,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 24,
                        offset: const Offset(0, -4),
                      ),
                    ],
                  ),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 24,
                        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.privacySettings,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),

                          Container(
                            margin: const EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.04),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.08),
                              ),
                            ),
                            child: SwitchListTile(
                              title: Text(
                                AppLocalizations.of(
                                  context,
                                )!.showMyProfileToOthers,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              value: showProfile,
                              onChanged: (value) {
                                setState(() => showProfile = value);
                              },
                              activeColor: Colors.indigo.shade300,
                              activeTrackColor: Colors.indigo.withOpacity(0.3),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(bottom: 24),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.04),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.08),
                              ),
                            ),
                            child: SwitchListTile(
                              title: Text(
                                AppLocalizations.of(context)!.shareUsageData,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              subtitle: Text(
                                AppLocalizations.of(
                                  context,
                                )!.shareUsageDataSubtitle,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 12,
                                ),
                              ),
                              value: shareUsage,
                              onChanged: (value) {
                                setState(() => shareUsage = value);
                              },
                              activeColor: Colors.indigo.shade300,
                              activeTrackColor: Colors.indigo.withOpacity(0.3),
                            ),
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 14,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.cancel,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    final success = await _userService
                                        .updatePrivacySettings(
                                          showProfileToOthers: showProfile,
                                          showActivityInLeaderboard:
                                              true, // Varsayılan olarak true, artık kullanıcı değiştiremez
                                          shareUsageData: shareUsage,
                                        );

                                    // ignore: use_build_context_synchronously
                                    if (success && context.mounted) {
                                      Navigator.pop(context);
                                      _loadUserData();
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            AppLocalizations.of(
                                              context,
                                            )!.privacySettingsUpdated,
                                          ),
                                          backgroundColor: Colors.green,
                                        ),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.indigo,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 14,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.save,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
          ),
    );
  }

  // Yardım modalı
  void _showHelpModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A).withOpacity(0.95), // deep obsidian
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              border: Border(
                top: BorderSide(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
                left: BorderSide(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
                right: BorderSide(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 24,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 24,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.helpAndSupport,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),

                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.08),
                        ),
                      ),
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.email_rounded,
                            color: Colors.indigo.shade300,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.contact,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: const Text(
                          'support@anesthesia.app',
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        ),
                        onTap: () {
                          // Email gönder
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(
                                  context,
                                )!.emailFeatureComingSoon,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.08),
                        ),
                      ),
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.description_rounded,
                            color: Colors.indigo.shade300,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.userGuide,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        onTap: () {
                          // Kullanım kılavuzunu aç
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(
                                  context,
                                )!.userGuideComingSoon,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 24),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.08),
                        ),
                      ),
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.indigo.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.info_rounded,
                            color: Colors.indigo.shade300,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.about,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        subtitle: const Text(
                          'Version 1.0.0',
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        ),
                        onTap: () {
                          // Hakkında sayfasını aç
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(
                                  context,
                                )!.aboutPageComingSoon,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.close,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }

  Widget _buildProfileHeader() {
    final userName = _userProfile?['displayName'] ?? 'Kullanıcı';
    final userTitle = _userProfile?['title'] ?? 'Anestezi Uzmanı';
    final profileImageUrl = _auth.currentUser?.photoURL;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          // Header with title and premium settings button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.profile,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
              GestureDetector(
                onTap: () => _showSettingsModal(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.15),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.settings_rounded,
                        color: Colors.white,
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        AppLocalizations.of(context)!.settings,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Stack(
            children: [
              Container(
                width: 110,
                height: 110,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade400, Colors.purple.shade400],
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple.withOpacity(0.3),
                      blurRadius: 16,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _imageFile != null
                          ? CircleAvatar(
                            radius: 50,
                            backgroundImage: FileImage(_imageFile!),
                          )
                          : CircleAvatar(
                            radius: 50,
                            backgroundColor: const Color(0xFF0F172A),
                            backgroundImage:
                                profileImageUrl != null
                                    ? NetworkImage(profileImageUrl)
                                    : null,
                            child:
                                profileImageUrl == null
                                    ? const Icon(
                                      Icons.person_rounded,
                                      size: 45,
                                      color: Colors.white60,
                                    )
                                    : null,
                          ),
                      // Loading overlay
                      if (_isLoading &&
                          (profileImageUrl != null || _imageFile != null))
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 2,
                right: 2,
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF0F172A),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.camera_alt_rounded,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            userName,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            userTitle,
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildProfileStat(
                  AppLocalizations.of(context)!.quiz,
                  _userActivity?.quizProgress.length.toString() ?? '0',
                  Colors.blue,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildProfileStat(
                  AppLocalizations.of(context)!.ranking,
                  '#$_currentRank',
                  Colors.purple,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildProfileStat(
                  AppLocalizations.of(context)!.points,
                  _calculateTotalPoints().toString(),
                  Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Toplam puan hesaplama
  int _calculateTotalPoints() {
    return _userActivity?.totalPoints ?? 0;
  }

  Widget _buildProfileStat(String label, String value, Color accentColor) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.08), width: 1),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: accentColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStats() {
    final correctAnswers = _userActivity?.totalCorrectAnswers.toString() ?? '0';
    final wrongAnswers = _userActivity?.totalWrongAnswers.toString() ?? '0';

    // Başarı oranını hesapla
    int totalCorrect = _userActivity?.totalCorrectAnswers ?? 0;
    int totalWrong = _userActivity?.totalWrongAnswers ?? 0;
    int totalAnswers = totalCorrect + totalWrong;

    String successRate = '0%';
    if (totalAnswers > 0) {
      double rate = (totalCorrect / totalAnswers) * 100;
      successRate = '${rate.toStringAsFixed(1)}%';
    }

    final streak = _userActivity?.dailyStreak.toString() ?? '0';
    final totalPoints = _userActivity?.totalPoints.toString() ?? '0';

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.08),
            Colors.white.withOpacity(0.01),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.08), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(1.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Container(
            color: const Color(0xFF0F172A).withOpacity(0.75),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.indigo.withOpacity(0.12),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.indigo.withOpacity(0.25),
                          width: 1,
                        ),
                      ),
                      child: const Icon(
                        Icons.analytics_rounded,
                        color: Colors.indigo,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      AppLocalizations.of(context)!.statistics,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildStatRow(
                  AppLocalizations.of(context)!.correctAnswer,
                  correctAnswers,
                  Colors.green,
                  Icons.check_circle_outline_rounded,
                ),
                _buildStatRow(
                  AppLocalizations.of(context)!.wrongAnswer,
                  wrongAnswers,
                  Colors.red,
                  Icons.highlight_off_rounded,
                ),
                _buildStatRow(
                  AppLocalizations.of(context)!.successRate,
                  successRate,
                  Colors.blue,
                  Icons.insights_rounded,
                ),
                _buildStatRow(
                  AppLocalizations.of(context)!.totalPoints,
                  totalPoints,
                  Colors.purple,
                  Icons.emoji_events_rounded,
                ),
                _buildStatRow(
                  AppLocalizations.of(context)!.bestStreak,
                  '$streak ${AppLocalizations.of(context)!.days}',
                  Colors.orange,
                  Icons.local_fire_department_rounded,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value, Color color, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: color.withOpacity(0.25), width: 1),
                ),
                child: Icon(icon, color: color, size: 18),
              ),
              const SizedBox(width: 12),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem(
    String title,
    IconData icon,
    BuildContext context, {
    required Function() onTap,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 380;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: isSmallScreen ? 6 : 8),
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? 10 : 14,
          vertical: isSmallScreen ? 10 : 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(
            0.04,
          ), // Clean glassmorphic appearance
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withOpacity(0.08), width: 1),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
              decoration: BoxDecoration(
                color: Colors.indigo.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.indigo.withOpacity(0.25),
                  width: 1,
                ),
              ),
              child: Icon(
                icon,
                color: Colors.indigo.shade300,
                size: isSmallScreen ? 18 : 20,
              ),
            ),
            SizedBox(width: isSmallScreen ? 10 : 14),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: isSmallScreen ? 13 : 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white.withOpacity(0.5),
              size: isSmallScreen ? 18 : 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubscriptionStatusItem(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 380;
    final isPremiumActive = _isPremium == true;
    final accentColor = isPremiumActive ? Colors.green : Colors.orange;

    return GestureDetector(
      onTap: () => _showSubscriptionStatusModal(context),
      child: Container(
        margin: EdgeInsets.only(bottom: isSmallScreen ? 6 : 8),
        padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? 10 : 14,
          vertical: isSmallScreen ? 10 : 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(
            0.04,
          ), // Clean glassmorphic appearance
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: accentColor.withOpacity(0.25), width: 1),
          boxShadow: [
            BoxShadow(
              color: accentColor.withOpacity(0.02),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: accentColor.withOpacity(0.25),
                  width: 1,
                ),
              ),
              child: Icon(
                isPremiumActive
                    ? Icons.workspace_premium_rounded
                    : Icons.info_outline_rounded,
                color: accentColor.shade300,
                size: isSmallScreen ? 18 : 20,
              ),
            ),
            SizedBox(width: isSmallScreen ? 10 : 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.subscriptionStatus,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 13 : 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    isPremiumActive
                        ? AppLocalizations.of(context)!.youAreSubscribed
                        : AppLocalizations.of(context)!.youAreNotSubscribed,
                    style: TextStyle(
                      fontSize: isSmallScreen ? 11 : 12,
                      fontWeight: FontWeight.w500,
                      color: accentColor.shade300,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white.withOpacity(0.5),
              size: isSmallScreen ? 18 : 20,
            ),
          ],
        ),
      ),
    );
  }

  void _showSubscriptionStatusModal(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final bottomNavBarHeight = 80.0;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            constraints: BoxConstraints(maxHeight: size.height * 0.85),
            margin: EdgeInsets.only(
              bottom: bottomNavBarHeight + 20,
              left: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A).withOpacity(0.95), // deep obsidian
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withOpacity(0.08),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 24,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Başlık
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.subscriptionStatus,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () => Navigator.pop(context),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                      ],
                    ),
                  ),
                  // İçerik - scroll edilebilir
                  Flexible(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: bottomPadding + 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_isPremium == true && _subscriptionInfo != null)
                            _buildSubscriptionInfo(context)
                          else
                            _buildNoSubscriptionInfo(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Widget _buildSubscriptionInfo(BuildContext context) {
    final subscriptionType = _subscriptionInfo!['type'] as String;
    final expiresOn = _subscriptionInfo!['expiresOn'] as DateTime?;
    final isLifetime = _subscriptionInfo!['isLifetime'] as bool? ?? false;

    String typeText = '';
    switch (subscriptionType) {
      case 'monthly':
        typeText = AppLocalizations.of(context)!.monthlySubscription;
        break;
      case 'yearly':
        typeText = AppLocalizations.of(context)!.yearlySubscription;
        break;
      case 'sixMonth':
        typeText = AppLocalizations.of(context)!.sixMonthSubscription;
        break;
      case 'lifetime':
        typeText = AppLocalizations.of(context)!.lifetimePurchase;
        break;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.green.withOpacity(0.5)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.green.shade300),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.youAreSubscribed,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                AppLocalizations.of(context)!.subscriptionType,
                typeText,
                Icons.card_membership,
              ),
              if (!isLifetime && expiresOn != null)
                _buildInfoRow(
                  AppLocalizations.of(context)!.expiresOn,
                  _formatSubscriptionDate(expiresOn),
                  Icons.calendar_today,
                )
              else if (isLifetime)
                _buildInfoRow(
                  AppLocalizations.of(context)!.expiresOn,
                  AppLocalizations.of(context)!.active,
                  Icons.all_inclusive,
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => _showCancelSubscriptionDialog(context),
            icon: const Icon(Icons.cancel_outlined, color: Colors.white),
            label: Text(
              AppLocalizations.of(context)!.cancelSubscription,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNoSubscriptionInfo(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.orange.withOpacity(0.5)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.orange.shade300),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.youAreNotSubscribed,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                AppLocalizations.of(context)!.premiumIncentiveMessage,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () async {
              Navigator.pop(context); // Modal'ı kapat
              // Premium ekranını full screen dialog olarak aç
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PremiumScreen(),
                  fullscreenDialog:
                      true, // Full screen dialog - navigation bar yok
                ),
              );
              // Premium ekranından döndükten sonra verileri yenile
              if (mounted) {
                await _loadUserData();
              }
            },
            icon: const Icon(Icons.workspace_premium, color: Colors.white),
            label: Text(
              AppLocalizations.of(context)!.goToPremium,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCancelSubscriptionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.transparent,
            content: Container(
              decoration: BoxDecoration(
                color: const Color(
                  0xFF0F172A,
                ).withOpacity(0.95), // deep obsidian
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.white.withOpacity(0.08),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 24,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.info_outline_rounded,
                      color: Colors.orange.shade300,
                      size: 36,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    AppLocalizations.of(context)!.cancelSubscription,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.cancelSubscriptionMessage,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.cancel,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _openSubscriptionSettings();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.openSettings,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }

  void _openSubscriptionSettings() async {
    try {
      if (Platform.isIOS) {
        // iOS için App Store ayarlarına yönlendir
        final url = Uri.parse('https://apps.apple.com/account/subscriptions');
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        } else {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppLocalizations.of(context)!.settingsErrorApple),
                backgroundColor: Colors.orange,
              ),
            );
          }
        }
      } else if (Platform.isAndroid) {
        // Android için Google Play ayarlarına yönlendir
        final url = Uri.parse(
          'https://play.google.com/store/account/subscriptions',
        );
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        } else {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppLocalizations.of(context)!.settingsErrorGoogle,
                ),
                backgroundColor: Colors.orange,
              ),
            );
          }
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.errorOccurred(e.toString()),
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  // Cihaz yönetimi modalı
  void _showDeviceManagementModal(BuildContext parentContext) {
    // Modal açıldığında cihaz kaydını kontrol et ve gerekirse kaydet (sadece bir kez)
    if (!_deviceCheckDone) {
      _deviceCheckDone = true;
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        try {
          final devices = await _deviceService.getUserDevices();
          if (devices.isEmpty) {
            // Cihaz yoksa kaydetmeyi dene
            await _deviceService.registerOrUpdateDevice();
            // Kayıt sonrası listeyi yenile
            if (mounted) {
              setState(() {
                _deviceCheckDone = false; // Reset flag for next time
              });
            }
          }
        } catch (e) {
          debugPrint('Cihaz kaydı kontrolü hatası: $e');
          if (mounted) {
            setState(() {
              _deviceCheckDone = false; // Reset flag on error
            });
          }
        }
      });
    }

    showModalBottomSheet(
      context: parentContext,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (modalContext) => StatefulBuilder(
            builder: (context, setModalState) {
              // Modal içinde FutureBuilder için state
              return Container(
                decoration: BoxDecoration(
                  color: const Color(
                    0xFF0F172A,
                  ).withOpacity(0.95), // deep obsidian
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  border: Border(
                    top: BorderSide(
                      color: Colors.white.withOpacity(0.08),
                      width: 1.5,
                    ),
                    left: BorderSide(
                      color: Colors.white.withOpacity(0.08),
                      width: 1.5,
                    ),
                    right: BorderSide(
                      color: Colors.white.withOpacity(0.08),
                      width: 1.5,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 24,
                      offset: const Offset(0, -4),
                    ),
                  ],
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 24,
                      bottom: MediaQuery.of(context).viewInsets.bottom + 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.myDevices,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 0.5,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // Modal kapanırken flag'i resetle
                                _deviceCheckDone = false;
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.05),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.1),
                                    width: 1,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.close_rounded,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          AppLocalizations.of(context)!.myDevicesSubtitle,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 320, // Sabit yükseklik ver
                          child: FutureBuilder<List<DeviceInfo>>(
                            future: _deviceService.getUserDevices(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              if (snapshot.hasError) {
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      '${AppLocalizations.of(context)!.errorLoadingDevices}:\n${snapshot.error}',
                                      style: const TextStyle(color: Colors.red),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                );
                              }

                              final devices = snapshot.data ?? [];

                              if (devices.isEmpty) {
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.devices_other_rounded,
                                          size: 48,
                                          color: Colors.white.withOpacity(0.3),
                                        ),
                                        const SizedBox(height: 12),
                                        Text(
                                          AppLocalizations.of(
                                            context,
                                          )!.noRegisteredDevices,
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(
                                              0.5,
                                            ),
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }

                              return RefreshIndicator(
                                onRefresh: () async {
                                  // Cihaz listesini yenile
                                  setModalState(() {});
                                },
                                child: ListView.builder(
                                  itemCount: devices.length,
                                  itemBuilder: (context, index) {
                                    final device = devices[index];
                                    return _buildDeviceCard(
                                      device,
                                      setModalState,
                                      parentContext,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            // Modal kapanırken flag'i resetle
                            _deviceCheckDone = false;
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.close,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
    );
  }

  Widget _buildDeviceCard(
    DeviceInfo device,
    StateSetter setState,
    BuildContext parentContext,
  ) {
    return FutureBuilder<String>(
      future: _deviceService.getCurrentDeviceId(),
      builder: (context, snapshot) {
        // Mevcut cihazı deviceId ile kontrol et
        final currentDeviceId = snapshot.data ?? '';
        final isCurrentDevice = device.deviceId == currentDeviceId;

        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.04),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color:
                  isCurrentDevice
                      ? Colors.green.withOpacity(0.4)
                      : Colors.white.withOpacity(0.08),
              width: isCurrentDevice ? 1.5 : 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    device.platform == 'android'
                        ? Icons.android
                        : device.platform == 'ios'
                        ? Icons.phone_iphone
                        : Icons.computer,
                    color: Colors.indigo.shade300,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          device.deviceName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          device.platform.toLowerCase() == 'android'
                              ? AppLocalizations.of(context)!.android
                              : device.platform.toLowerCase() == 'ios'
                              ? AppLocalizations.of(context)!.ios
                              : device.platform.toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isCurrentDevice)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.thisDevice,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${AppLocalizations.of(context)!.registered}: ${_formatDate(device.registeredAt)}',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                      Text(
                        '${AppLocalizations.of(context)!.lastLogin}: ${_formatDate(device.lastLoginAt)}',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                  // Silme butonu her zaman göster - mevcut cihazsa çıkış yap, değilse kaldır
                  IconButton(
                    icon: const Icon(Icons.delete_outline, color: Colors.red),
                    onPressed: () async {
                      final confirmed = await showDialog<bool>(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              backgroundColor: Colors.indigo.shade900,
                              title: Text(
                                isCurrentDevice
                                    ? AppLocalizations.of(context)!.logout
                                    : AppLocalizations.of(
                                      context,
                                    )!.logoutFromDevice,
                                style: const TextStyle(color: Colors.white),
                              ),
                              content: Text(
                                isCurrentDevice
                                    ? 'Bu cihazdan çıkış yapmak istediğinizden emin misiniz?'
                                    : AppLocalizations.of(
                                      context,
                                    )!.logoutFromDeviceMessage,
                                style: const TextStyle(color: Colors.white70),
                              ),
                              actions: [
                                TextButton(
                                  onPressed:
                                      () => Navigator.pop(context, false),
                                  child: Text(
                                    AppLocalizations.of(context)!.cancel,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: Text(
                                    isCurrentDevice
                                        ? AppLocalizations.of(context)!.logout
                                        : AppLocalizations.of(
                                          context,
                                        )!.logoutFromDevice,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                      );

                      if (confirmed == true) {
                        try {
                          // Önce Firestore'dan cihazı kaldır (mevcut cihazda da farklı cihazda da)
                          final success = await _deviceService.removeDevice(
                            device.deviceId,
                          );

                          if (isCurrentDevice) {
                            // Mevcut cihazsa hem Firestore'dan kaldır hem de çıkış yap
                            // Önce modal'ı kapat - parent context kullan
                            try {
                              Navigator.of(
                                parentContext,
                                rootNavigator: false,
                              ).pop(); // Modal'ı kapat
                            } catch (e) {
                              // Modal zaten kapanmış olabilir
                              debugPrint('Modal kapatma hatası: $e');
                            }

                            // Kısa bir bekleme - modal'ın kapanması için
                            await Future.delayed(
                              const Duration(milliseconds: 300),
                            );

                            // Çıkış yap
                            await _authService.signOut();

                            // Login ekranına git - root navigator kullan
                            if (mounted) {
                              try {
                                // Root navigator kullan - modal context'inden bağımsız
                                final rootNavigator = Navigator.of(
                                  parentContext,
                                  rootNavigator: true,
                                );
                                rootNavigator.pushNamedAndRemoveUntil(
                                  '/login',
                                  (route) => false,
                                );
                              } catch (e) {
                                // Context geçersiz olabilir, alternatif yöntem dene
                                try {
                                  // Global navigator key kullan
                                  final navigatorKey = Navigator.of(
                                    context,
                                    rootNavigator: true,
                                  );
                                  navigatorKey.pushNamedAndRemoveUntil(
                                    '/login',
                                    (route) => false,
                                  );
                                } catch (e2) {
                                  // Hata durumunda sadece logla
                                  debugPrint('Navigasyon hatası: $e2');
                                }
                              }
                            }
                          } else {
                            // Farklı cihazsa sadece Firestore'dan kaldır
                            // Listener otomatik olarak o cihazdan çıkış yapacak
                            if (success) {
                              // Başarılı mesajı göster
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      AppLocalizations.of(
                                        context,
                                      )!.deviceRemoved,
                                    ),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              }
                              // Listeyi yenile - modal state'i kullan
                              setState(() {});
                            } else {
                              // Hata mesajı göster
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      AppLocalizations.of(
                                        context,
                                      )!.deviceRemoveError,
                                    ),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            }
                          }
                        } catch (e) {
                          if (mounted) {
                            // Hata durumunda mevcut cihazsa yine de çıkış yap
                            if (isCurrentDevice) {
                              // Önce modal'ı kapat - parent context kullan
                              try {
                                Navigator.of(
                                  parentContext,
                                  rootNavigator: false,
                                ).pop(); // Modal'ı kapat
                                await Future.delayed(
                                  const Duration(milliseconds: 300),
                                );
                              } catch (e3) {
                                // Modal kapatma hatası - devam et
                                debugPrint('Modal kapatma hatası: $e3');
                              }

                              try {
                                await _authService.signOut();
                                if (mounted) {
                                  try {
                                    // Root navigator kullan - modal context'inden bağımsız
                                    final rootNavigator = Navigator.of(
                                      parentContext,
                                      rootNavigator: true,
                                    );
                                    rootNavigator.pushNamedAndRemoveUntil(
                                      '/login',
                                      (route) => false,
                                    );
                                  } catch (e4) {
                                    // Context geçersiz olabilir, alternatif yöntem dene
                                    try {
                                      final navigatorKey = Navigator.of(
                                        context,
                                        rootNavigator: true,
                                      );
                                      navigatorKey.pushNamedAndRemoveUntil(
                                        '/login',
                                        (route) => false,
                                      );
                                    } catch (e5) {
                                      debugPrint('Navigasyon hatası: $e5');
                                    }
                                  }
                                }
                              } catch (e2) {
                                if (mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Hata: ${e.toString()}'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Hata: ${e.toString()}'),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          }
                        }
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} dk önce';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} saat önce';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} gün önce';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }

  String _formatSubscriptionDate(DateTime date) {
    // Abonelik bitiş tarihi için daha detaylı format
    final now = DateTime.now();
    final difference = date.difference(now);

    if (difference.isNegative) {
      // Tarih geçmişte
      return '${date.day}/${date.month}/${date.year} (Süresi Doldu)';
    } else if (difference.inDays < 30) {
      // 30 günden az kaldı
      return '${date.day}/${date.month}/${date.year} (${difference.inDays} gün kaldı)';
    } else {
      // Normal format
      return '${date.day}/${date.month}/${date.year}';
    }
  }

  // Dil seçici widget'ı kaldırıldı - artık uygulama başlangıcında seçiliyor

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.transparent,
        content: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF0F172A).withOpacity(0.95), // deep obsidian
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.red.withOpacity(0.3),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 24,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // İkon
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                    size: 32,
                  ),
                ),
                const SizedBox(height: 16),
                // Başlık
                Text(
                  AppLocalizations.of(context)!.deleteAccountTitle,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                // İçerik
                Text(
                  AppLocalizations.of(context)!.deleteAccountMessage,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.7),
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                // Butonlar
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.cancel,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _openDeleteAccountPage();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.deleteAccount,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openDeleteAccountPage() {
    // Web sayfasını aç
    final url = 'https://anestezi.web.app/delete-account.html';

    // URL launcher kullanarak web sayfasını aç
    // url_launcher paketi gerekli
    // Bu örnekte basit bir snackbar gösteriyoruz
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.accountDeletionPage(url)),
        action: SnackBarAction(
          label: 'Kopyala',
          onPressed: () {
            // Clipboard'a kopyala
            // Clipboard.setData(ClipboardData(text: url));
          },
        ),
        duration: const Duration(seconds: 5),
      ),
    );
  }
}
