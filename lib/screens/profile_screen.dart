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

import 'login_screen.dart';
import 'achievements_screen.dart';

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
  final ImagePicker _imagePicker = ImagePicker();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  StreamSubscription? _rankSubscription;
  int _currentRank = 0;

  bool _isLoading = true;
  bool _isUploading = false;
  Map<String, dynamic>? _userProfile;
  UserActivity? _userActivity;
  List<Map<String, dynamic>> _userActivities = [];
  File? _imageFile;

  // Gerçek zamanlı veri izleyici - otomatik güncelleme
  Stream<DocumentSnapshot> _getUserActivityStream() {
    final userId = _authService.currentUser?.uid;
    if (userId != null) {
      return _firestore.collection('userActivities').doc(userId).snapshots();
    }
    // Eğer kullanıcı girişi yoksa boş stream döndür
    return Stream.empty();
  }

  @override
  void initState() {
    super.initState();
    _loadUserData();
    _subscribeToRank();
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
    _rankSubscription?.cancel();
    super.dispose();
  }

  // Kullanıcı verilerini yükle
  Future<void> _loadUserData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Varsayılan profil ayarlarını oluştur
      await _userService.createDefaultUserSettings();

      // Kullanıcı profilini getir
      final userProfile = await _userService.getUserProfile();

      // Kullanıcı aktivitesini getir
      final userActivity = await _quizService.getUserActivity();

      // Son aktiviteleri getir
      final userActivities = await _userService.getUserActivities();

      setState(() {
        _userProfile = userProfile;
        _userActivity = userActivity;
        _userActivities = userActivities;
        _isLoading = false;
      });
    } catch (e) {
      print('Kullanıcı verilerini yükleme hatası: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _pickImage() async {
    try {
      setState(() {
        _isLoading = true;
      });

      // Galeri ve kamera seçeneklerini göster
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          final size = MediaQuery.of(context).size;
          final bottomPadding = MediaQuery.of(context).viewPadding.bottom;

          return Container(
            height: size.height * 0.28 + bottomPadding,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigo.shade900, Colors.black],
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigo.shade800, Colors.purple.shade900],
                    ),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
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
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 22,
                        ),
                        onPressed: () => Navigator.pop(context),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      16,
                      16,
                      16,
                      16 + bottomPadding,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildImageOption(
                          icon: Icons.photo_library,
                          title: 'Galeriden\nSeç',
                          onTap: () async {
                            Navigator.pop(context);
                            final XFile? image = await _imagePicker.pickImage(
                              source: ImageSource.gallery,
                              maxWidth: 800,
                              maxHeight: 800,
                              imageQuality: 85,
                            );
                            if (image != null) {
                              setState(() {
                                _imageFile = File(image.path);
                              });
                              await _uploadImage();
                            }
                          },
                          size: size,
                        ),
                        _buildImageOption(
                          icon: Icons.camera_alt,
                          title: 'Fotoğraf\nÇek',
                          onTap: () async {
                            Navigator.pop(context);
                            final XFile? image = await _imagePicker.pickImage(
                              source: ImageSource.camera,
                              maxWidth: 800,
                              maxHeight: 800,
                              imageQuality: 85,
                            );
                            if (image != null) {
                              setState(() {
                                _imageFile = File(image.path);
                              });
                              await _uploadImage();
                            }
                          },
                          size: size,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    } catch (e) {
      print('Görsel seçme hatası: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Görsel seçilirken bir hata oluştu')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Widget _buildImageOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required Size size,
  }) {
    final buttonWidth = size.width * 0.35;
    final buttonHeight = size.height * 0.12;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: buttonHeight * 0.3),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: buttonHeight * 0.13,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _uploadImage() async {
    if (_imageFile == null) return;

    try {
      setState(() {
        _isLoading = true;
      });

      final user = _auth.currentUser;
      if (user == null) return;

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

      // Aktivite ekle
      await _userService.addActivity(
        type: 'profile_update',
        title: 'Profil fotoğrafınız güncellendi',
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profil fotoğrafı güncellendi')),
      );

      // Kullanıcı verilerini yeniden yükle
      await _loadUserData();
    } catch (e) {
      print('Fotoğraf yükleme hatası: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fotoğraf yüklenirken bir hata oluştu')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
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
        body: StreamBuilder<DocumentSnapshot>(
          stream: _getUserActivityStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting &&
                _isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasData &&
                snapshot.data != null &&
                snapshot.data!.exists) {
              try {
                _userActivity = UserActivity.fromFirestore(snapshot.data!);
              } catch (e) {
                print('UserActivity dönüştürme hatası: $e');
              }
            }

            return LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: bottomPadding + 80),
                        child: Column(
                          children: [
                            _buildProfileHeader(),
                            _buildStats(),
                            Expanded(child: _buildAchievements()),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
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
                            try {
                              await _authService.signOut();
                              Navigator.of(
                                context,
                                rootNavigator: true,
                              ).pushNamedAndRemoveUntil(
                                '/login',
                                (route) => false,
                              );
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Çıkış yapılırken bir hata oluştu: $e',
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
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
                            // Aktivite ekle
                            await _userService.addActivity(
                              type: 'profile_update',
                              title: 'Profil bilgileriniz güncellendi',
                            );

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
                      Icons.description,
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
                  onTap: _isLoading ? null : _pickImage,
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
                                    ? const Icon(Icons.person, size: 45)
                                    : null,
                          ),
                      if (_isLoading)
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: CircularProgressIndicator(),
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
                  onTap: _isLoading ? null : _pickImage,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.camera_alt, size: 18),
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

  Widget _buildAchievements() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Başarılar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AchievementsScreen(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Tümünü Gör',
                      style: TextStyle(
                        color: Colors.blue.shade300,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.blue.shade300,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 120,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  _buildAchievementCard(
                    'Uzman',
                    '100 Quiz Tamamlandı',
                    Icons.workspace_premium,
                  ),
                  _buildAchievementCard(
                    'Hızlı',
                    '30 saniyede quiz bitir',
                    Icons.speed,
                  ),
                  _buildAchievementCard(
                    'Mükemmel',
                    '100% doğru cevap',
                    Icons.star,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementCard(
    String title,
    String description,
    IconData icon,
  ) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple.shade900, Colors.blue.shade900],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.yellow, size: 32),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(color: Colors.grey[400], fontSize: 11),
            textAlign: TextAlign.center,
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
}
