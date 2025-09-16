import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/premium_service.dart';
import '../widgets/premium_lock_widget.dart';

class DemoPremiumFeaturesScreen extends StatelessWidget {
  const DemoPremiumFeaturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Özellikler Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Consumer<PremiumService>(
            builder: (context, premiumService, child) {
              return IconButton(
                onPressed: () {
                  premiumService.toggleTestMode();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        premiumService.isTestMode 
                          ? 'Test Modu AÇIK!' 
                          : 'Test Modu KAPALI!',
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: premiumService.isTestMode ? Colors.green : Colors.orange,
                    ),
                  );
                },
                icon: Icon(
                  premiumService.isTestMode ? Icons.check_circle : Icons.cancel,
                  color: premiumService.isTestMode ? Colors.green : Colors.red,
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Test Modu Durumu
            Consumer<PremiumService>(
              builder: (context, premiumService, child) {
                return Card(
                  color: premiumService.isTestMode ? Colors.green.shade50 : Colors.red.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          premiumService.isTestMode ? Icons.check_circle : Icons.cancel,
                          color: premiumService.isTestMode ? Colors.green : Colors.red,
                          size: 32,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                premiumService.isTestMode ? 'Test Modu AÇIK' : 'Test Modu KAPALI',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: premiumService.isTestMode ? Colors.green : Colors.red,
                                ),
                              ),
                              Text(
                                premiumService.isTestMode 
                                  ? 'Tüm premium özellikler erişilebilir durumda'
                                  : 'Premium özellikler için satın alma gerekli',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: premiumService.isTestMode ? Colors.green.shade700 : Colors.red.shade700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            
            const SizedBox(height: 24),
            
            // Premium Özellik 1: Sınırsız Quiz
            _buildFeatureCard(
              context,
              title: 'Sınırsız Quiz',
              description: 'Tüm kategorilerde sınırsız quiz yapabilirsiniz',
              icon: Icons.quiz,
              isPremium: true,
            ),
            
            const SizedBox(height: 16),
            
            // Premium Özellik 2: Detaylı Açıklamalar
            _buildFeatureCard(
              context,
              title: 'Detaylı Açıklamalar',
              description: 'Her soru için detaylı açıklama ve kaynak bilgileri',
              icon: Icons.info_outline,
              isPremium: true,
            ),
            
            const SizedBox(height: 16),
            
            // Premium Özellik 3: Yanlış Soruları Görüntüle
            _buildFeatureCard(
              context,
              title: 'Yanlış Soruları Görüntüle',
              description: 'Yanlış cevapladığınız soruları tekrar inceleyin',
              icon: Icons.error_outline,
              isPremium: true,
            ),
            
            const SizedBox(height: 16),
            
            // Premium Özellik 4: Gelişmiş Analitik
            _buildFeatureCard(
              context,
              title: 'Gelişmiş Analitik',
              description: 'Performansınızı detaylı analiz edin',
              icon: Icons.analytics,
              isPremium: true,
            ),
            
            const SizedBox(height: 16),
            
            // Premium Özellik 5: Tüm Sorulara Erişim
            _buildFeatureCard(
              context,
              title: 'Tüm Sorulara Erişim',
              description: 'Tüm soru bankasına sınırsız erişim',
              icon: Icons.all_inclusive,
              isPremium: true,
            ),
            
            const SizedBox(height: 24),
            
            // Test Butonları
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/test-premium');
                    },
                    icon: const Icon(Icons.science),
                    label: const Text('Test Ayarları'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/premium');
                    },
                    icon: const Icon(Icons.star),
                    label: const Text('Premium\'a Geç'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required bool isPremium,
  }) {
    return Consumer<PremiumService>(
      builder: (context, premiumService, child) {
        final hasAccess = premiumService.isTestMode || premiumService.hasPremiumAccess();
        
        return Card(
          elevation: hasAccess ? 4 : 2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: hasAccess ? Colors.green : Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 24,
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
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: hasAccess ? Colors.black : Colors.grey,
                            ),
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 14,
                              color: hasAccess ? Colors.black87 : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (hasAccess)
                      const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 24,
                      )
                    else
                      const Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 24,
                      ),
                  ],
                ),
                
                if (!hasAccess) ...[
                  const SizedBox(height: 16),
                  PremiumLockWidget(
                    message: 'Bu özellik premium üyelik gerektirir',
                    subtitle: 'Premium\'a geçerek tüm özelliklere erişim kazanın',
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
