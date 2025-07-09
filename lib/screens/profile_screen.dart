import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../services/quiz_service.dart';
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
import '../utils/snackbar_utils.dart';
import '../utils/event_bus.dart';
import '../services/device_service.dart';
import '../models/device_info.dart';

import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthService _authService = AuthService();
  final QuizService _quizService = QuizService();
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
  bool _isUploading = false;
  Map<String, dynamic>? _userProfile;
  UserActivity? _userActivity;
  File? _imageFile;

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    _loadUserData();
    _subscribeToRank();

    // EventBus dinleyicisi ekle - hızlı güncelleme için
    _mistakesSubscription = EventBus().mistakesUpdatedStream.listen((event) {
      print("EventBus: Profil hızlı güncelleniyor...");
      if (mounted) {
        // Hemen setState yaparak loading'i kapat
        setState(() {
          _isLoading = false;
        });
        // Sonra arka planda verileri güncelle
        _loadUserData();
      }
    });
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
    print('Profile screen dispose edilmeye başlıyor...');

    // StreamSubscription'ları güvenli şekilde iptal et
    try {
      if (_rankSubscription != null) {
        _rankSubscription!.cancel();
        _rankSubscription = null;
        print('✅ Dispose: Rank subscription iptal edildi');
      }
    } catch (e) {
      print('Dispose: Rank subscription iptal hatası: $e');
    }

    try {
      if (_mistakesSubscription != null) {
        _mistakesSubscription!.cancel();
        _mistakesSubscription = null;
        print('✅ Dispose: Mistakes subscription iptal edildi');
      }
    } catch (e) {
      print('Dispose: Mistakes subscription iptal hatası: $e');
    }

    print('Profile screen dispose tamamlandı');
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
        } catch (e) {
          print('UserActivity dönüştürme hatası: $e');
        }
      }

      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      print('Kullanıcı verileri yükleme hatası: $e');
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
                        const Text(
                          'Profil Fotoğrafı',
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
                                title: 'Galeriden\nSeç',
                                onTap: () => Navigator.pop(context, 'gallery'),
                                isTablet: isTablet,
                              ),
                              _buildImageOptionDialog(
                                icon: Icons.camera_alt,
                                title: 'Fotoğraf\nÇek',
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
          print('Görsel seçme hatası: $e');
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Görsel seçilirken bir hata oluştu'),
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
      print('Dialog açma hatası: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Bir hata oluştu, tekrar deneyin'),
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
        } catch (e) {
          print('Eski fotoğraf silinirken hata: $e');
        }
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

      print('DEBUG: Profil fotoğrafı başarıyla yüklendi');
    } catch (e) {
      print('Fotoğraf yükleme hatası: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Fotoğraf yüklenirken bir hata oluştu')),
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
    final size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue.shade900, Colors.black],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Profil'),
          actions: [
            TextButton.icon(
              onPressed: () => _showSettingsModal(context),
              icon: const Icon(Icons.settings, color: Colors.white),
              label: const Text(
                'Ayarlar',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: LayoutBuilder(
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
      ),
    );
  }

  void _showSettingsModal(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final bottomNavBarHeight = 80.0; // Tahmini alt navigasyon çubuğu yüksekliği

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        // Ekranın %65'ini modal kullanacak şekilde ayarla
        final modalHeight = size.height * 0.65;

        // Kullanılabilir ekran yüksekliğini hesapla (navigation bar hariç)
        final availableHeight =
            size.height - bottomNavBarHeight - bottomPadding;

        // Modal yüksekliğini, kullanılabilir alandan fazla olmayacak şekilde sınırla
        final finalHeight =
            modalHeight < availableHeight ? modalHeight : availableHeight * 0.8;

        return Container(
          height: finalHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo.shade900, Colors.black],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              // Başlık kısmı
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigo.shade800, Colors.purple.shade900],
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ayarlar',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    child: Column(
                      children: [
                        _buildSettingItem(
                          'Profili Düzenle',
                          Icons.edit,
                          context,
                          onTap: () => _showEditProfileModal(context),
                        ),
                        _buildSettingItem(
                          'Bildirimler',
                          Icons.notifications,
                          context,
                          onTap: () => _showNotificationsSettingsModal(context),
                        ),
                        _buildSettingItem(
                          'Cihazlarım',
                          Icons.devices,
                          context,
                          onTap: () => _showDeviceManagementModal(context),
                        ),
                        _buildSettingItem(
                          'Gizlilik',
                          Icons.lock,
                          context,
                          onTap: () => _showPrivacySettingsModal(context),
                        ),
                        _buildSettingItem(
                          'Yardım',
                          Icons.help,
                          context,
                          onTap: () => _showHelpModal(context),
                        ),
                        _buildSettingItem(
                          'Çıkış Yap',
                          Icons.exit_to_app,
                          context,
                          onTap: () async {
                            // Çıkış onay dialogu göster
                            final shouldSignOut = await showDialog<bool>(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    title: const Text('Çıkış Yap'),
                                    content: const Text(
                                      'Hesaptan çıkmak istediğinizden emin misiniz?',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed:
                                            () => Navigator.pop(context, false),
                                        child: const Text('İptal'),
                                      ),
                                      TextButton(
                                        onPressed:
                                            () => Navigator.pop(context, true),
                                        child: const Text('Çıkış Yap'),
                                      ),
                                    ],
                                  ),
                            );

                            if (shouldSignOut == true) {
                              print('🚪 Profile çıkış başlatılıyor...');

                              // 1. ÖNCELİKLE stream'leri iptal et (Firebase token geçerli iken)
                              try {
                                print('📡 Stream\'ler iptal ediliyor...');
                                if (_rankSubscription != null) {
                                  await _rankSubscription!.cancel();
                                  _rankSubscription = null;
                                  print('✅ Rank stream iptal edildi');
                                }
                                if (_mistakesSubscription != null) {
                                  await _mistakesSubscription!.cancel();
                                  _mistakesSubscription = null;
                                  print('✅ Mistakes stream iptal edildi');
                                }
                              } catch (e) {
                                print(
                                  '⚠️ Stream iptal hatası (devam ediliyor): $e',
                                );
                              }

                              // 2. SONRA Firebase çıkış yap
                              try {
                                await _authService.signOut();
                                print('✅ Firebase çıkış tamamlandı');
                              } catch (e) {
                                print('⚠️ Firebase çıkış hatası: $e');
                              }

                              // 3. Her durumda login'e yönlendir
                              if (mounted) {
                                Navigator.of(
                                  context,
                                  rootNavigator: true,
                                ).pushNamedAndRemoveUntil(
                                  '/login',
                                  (route) => false,
                                );
                                print('✅ Login sayfasına yönlendirildi');
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
    final phoneController = TextEditingController(
      text: _userProfile?['phone'] ?? '',
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo.shade900, Colors.black],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Profili Düzenle',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'İsim',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white10,
                    ),
                  ),
                  const SizedBox(height: 12),

                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: 'Ünvan',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white10,
                    ),
                  ),
                  const SizedBox(height: 12),

                  TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Telefon',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white10,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('İptal'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        onPressed: () async {
                          final success = await _userService.updateUserProfile(
                            displayName: nameController.text.trim(),
                            title: titleController.text.trim(),
                            phone: phoneController.text.trim(),
                          );

                          // ignore: use_build_context_synchronously
                          if (success && context.mounted) {
                            Navigator.pop(context);
                            _loadUserData();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Profil bilgileriniz güncellendi',
                                ),
                                backgroundColor: Colors.green,
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                        ),
                        child: const Text('Kaydet'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }

  // Bildirim ayarları modalı
  void _showNotificationsSettingsModal(BuildContext context) {
    bool enablePush =
        _userProfile?['notificationSettings']?['enablePushNotifications'] ??
        true;
    bool enableEmail =
        _userProfile?['notificationSettings']?['enableEmailNotifications'] ??
        true;
    bool enableDaily =
        _userProfile?['notificationSettings']?['enableDailyReminders'] ?? true;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder:
          (context) => StatefulBuilder(
            builder:
                (context, setState) => Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo.shade900, Colors.black],
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Bildirim Ayarları',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),

                        SwitchListTile(
                          title: const Text('Push Bildirimleri'),
                          value: enablePush,
                          onChanged: (value) {
                            setState(() => enablePush = value);
                          },
                          activeColor: Colors.indigo,
                        ),

                        SwitchListTile(
                          title: const Text('Email Bildirimleri'),
                          value: enableEmail,
                          onChanged: (value) {
                            setState(() => enableEmail = value);
                          },
                          activeColor: Colors.indigo,
                        ),

                        SwitchListTile(
                          title: const Text('Günlük Hatırlatıcılar'),
                          value: enableDaily,
                          onChanged: (value) {
                            setState(() => enableDaily = value);
                          },
                          activeColor: Colors.indigo,
                        ),

                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () async {
                            final success = await _userService
                                .updateNotificationSettings(
                                  enablePushNotifications: enablePush,
                                  enableEmailNotifications: enableEmail,
                                  enableDailyReminders: enableDaily,
                                );

                            // ignore: use_build_context_synchronously
                            if (success && context.mounted) {
                              Navigator.pop(context);
                              _loadUserData();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Bildirim ayarlarınız güncellendi',
                                  ),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Kaydet'),
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
    bool showInLeaderboard =
        _userProfile?['privacySettings']?['showActivityInLeaderboard'] ?? true;
    bool shareUsage =
        _userProfile?['privacySettings']?['shareUsageData'] ?? true;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder:
          (context) => StatefulBuilder(
            builder:
                (context, setState) => Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo.shade900, Colors.black],
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Gizlilik Ayarları',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),

                        SwitchListTile(
                          title: const Text('Profilimi Diğerlerine Göster'),
                          value: showProfile,
                          onChanged: (value) {
                            setState(() => showProfile = value);
                          },
                          activeColor: Colors.indigo,
                        ),

                        SwitchListTile(
                          title: const Text('Liderlik Tablosunda Göster'),
                          value: showInLeaderboard,
                          onChanged: (value) {
                            setState(() => showInLeaderboard = value);
                          },
                          activeColor: Colors.indigo,
                        ),

                        SwitchListTile(
                          title: const Text('Kullanım Verilerini Paylaş'),
                          subtitle: const Text(
                            'Uygulama deneyimini iyileştirmek için anonim kullanım verileri',
                          ),
                          value: shareUsage,
                          onChanged: (value) {
                            setState(() => shareUsage = value);
                          },
                          activeColor: Colors.indigo,
                        ),

                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () async {
                            final success = await _userService
                                .updatePrivacySettings(
                                  showProfileToOthers: showProfile,
                                  showActivityInLeaderboard: showInLeaderboard,
                                  shareUsageData: shareUsage,
                                );

                            // ignore: use_build_context_synchronously
                            if (success && context.mounted) {
                              Navigator.pop(context);
                              _loadUserData();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Gizlilik ayarlarınız güncellendi',
                                  ),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: const Text('Kaydet'),
                        ),
                      ],
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
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo.shade900, Colors.black],
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Yardım ve Destek',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  ListTile(
                    leading: const Icon(Icons.email, color: Colors.indigo),
                    title: const Text('İletişim'),
                    subtitle: const Text('destek@anestezi.app'),
                    onTap: () {
                      // Email gönder
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Email gönderme özelliği yakında eklenecek',
                          ),
                        ),
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(
                      Icons.description_outlined,
                      color: Colors.indigo,
                    ),
                    title: const Text('Kullanım Kılavuzu'),
                    onTap: () {
                      // Kullanım kılavuzunu aç
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Kullanım kılavuzu yakında eklenecek'),
                        ),
                      );
                    },
                  ),

                  ListTile(
                    leading: const Icon(Icons.info, color: Colors.indigo),
                    title: const Text('Hakkında'),
                    subtitle: const Text('Versiyon 1.0.0'),
                    onTap: () {
                      // Hakkında sayfasını aç
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Hakkında sayfası yakında eklenecek'),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Kapat'),
                  ),
                ],
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
          Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple.shade500],
                  ),
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _imageFile != null
                          ? CircleAvatar(
                            radius: 45,
                            backgroundImage: FileImage(_imageFile!),
                          )
                          : CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.grey[900],
                            backgroundImage:
                                profileImageUrl != null
                                    ? NetworkImage(profileImageUrl)
                                    : null,
                            child:
                                profileImageUrl == null
                                    ? const Icon(
                                      Icons.person,
                                      size: 45,
                                      color: Colors.grey,
                                    )
                                    : null,
                          ),
                      // Loading overlay - sadece upload sırasında ve fotoğraf varsa göster
                      if (_isLoading &&
                          (profileImageUrl != null || _imageFile != null))
                        Container(
                          width: 90,
                          height: 90,
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
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            userName,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            userTitle,
            style: TextStyle(color: Colors.grey[400], fontSize: 14),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildProfileStat(
                'Quiz',
                _userActivity?.quizProgress.length.toString() ?? '0',
              ),
              _buildProfileStat('Sıralama', '#$_currentRank'),
              _buildProfileStat('Puan', _calculateTotalPoints().toString()),
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

  Widget _buildProfileStat(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(label, style: TextStyle(color: Colors.grey[400])),
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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Text(
            'İstatistikler',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildStatRow(
            'Doğru Cevap',
            correctAnswers,
            Colors.green,
            Icons.check_circle_outlined,
          ),
          _buildStatRow(
            'Yanlış Cevap',
            wrongAnswers,
            Colors.red,
            Icons.highlight_off,
          ),
          _buildStatRow(
            'Başarı Oranı',
            successRate,
            Colors.blue,
            Icons.insights,
          ),
          _buildStatRow(
            'Toplam Puan',
            totalPoints,
            Colors.purple,
            Icons.emoji_events_outlined,
          ),
          _buildStatRow(
            'En İyi Streak',
            '$streak gün',
            Colors.orange,
            Icons.local_fire_department,
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, String value, Color color, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 12),
              Text(label),
            ],
          ),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.indigo.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: Colors.indigo.shade300, size: 20),
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Icon(Icons.chevron_right, color: Colors.grey.shade400, size: 18),
          ],
        ),
      ),
    );
  }

  // Cihaz yönetimi modalı
  void _showDeviceManagementModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo.shade900, Colors.black],
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Cihazlarım',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 40), // For balance
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'En fazla 2 cihazdan giriş yapabilirsiniz',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: FutureBuilder<List<DeviceInfo>>(
                    future: _deviceService.getUserDevices(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                            'Cihazlar yüklenirken hata oluştu:\n${snapshot.error}',
                            style: const TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }

                      final devices = snapshot.data ?? [];

                      if (devices.isEmpty) {
                        return const Center(
                          child: Text(
                            'Kayıtlı cihaz bulunamadı',
                            style: TextStyle(color: Colors.grey),
                          ),
                        );
                      }

                      return ListView.builder(
                        itemCount: devices.length,
                        itemBuilder: (context, index) {
                          final device = devices[index];
                          return _buildDeviceCard(device, setState);
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Kapat'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeviceCard(DeviceInfo device, StateSetter setState) {
    final isCurrentDevice = device.lastLoginAt.isAfter(DateTime.now().subtract(const Duration(minutes: 5)));

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: isCurrentDevice 
          ? Border.all(color: Colors.green, width: 2)
          : null,
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
                      device.platform.toUpperCase(),
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
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Bu Cihaz',
                    style: TextStyle(
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
                    'Kayıt: ${_formatDate(device.registeredAt)}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    'Son Giriş: ${_formatDate(device.lastLoginAt)}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              if (!isCurrentDevice)
                IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () async {
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.indigo.shade900,
                        title: const Text('Cihazı Sil'),
                        content: const Text('Bu cihazı silmek istediğinize emin misiniz?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, false),
                            child: const Text('İptal'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, true),
                            child: const Text('Sil', style: TextStyle(color: Colors.red)),
                          ),
                        ],
                      ),
                    );

                    if (confirmed == true) {
                      await _deviceService.removeDevice(device.deviceId);
                      setState(() {}); // Refresh the list
                    }
                  },
                ),
            ],
          ),
        ],
      ),
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
}
