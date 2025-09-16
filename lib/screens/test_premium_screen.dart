import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/premium_service.dart';

class TestPremiumScreen extends StatefulWidget {
  const TestPremiumScreen({Key? key}) : super(key: key);

  @override
  State<TestPremiumScreen> createState() => _TestPremiumScreenState();
}

class _TestPremiumScreenState extends State<TestPremiumScreen> {
  bool _isLoading = true;
  String _status = '';

  @override
  void initState() {
    super.initState();
    _initializeService();
  }

  Future<void> _initializeService() async {
    setState(() {
      _isLoading = false;
      _updateStatus();
    });
  }

  void _updateStatus() {
    final premiumService = Provider.of<PremiumService>(context, listen: false);
    final hasPremium = premiumService.hasPremiumAccess();
    final hasMonthly = premiumService.hasMonthlySubscription();
    final hasYearly = premiumService.hasYearlySubscription();
    final hasLifetime = premiumService.hasLifetimePurchase();
    
    setState(() {
      _status = '''
Test Mode: ${premiumService.isTestMode}
Premium Access: $hasPremium
Monthly Subscription: $hasMonthly
Yearly Subscription: $hasYearly
Lifetime Purchase: $hasLifetime
Available: ${premiumService.isAvailable()}
Products Count: ${premiumService.getProducts().length}
      ''';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Premium Screen'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Premium Status',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(_status),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Consumer<PremiumService>(
                    builder: (context, premiumService, child) {
                      return Column(
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              final success = await premiumService.buyMonthlySubscription();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(success ? 'Monthly subscription started' : 'Failed to start subscription'),
                                ),
                              );
                              _updateStatus();
                            },
                            child: const Text('Buy Monthly Subscription'),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () async {
                              final success = await premiumService.buyYearlySubscription();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(success ? 'Yearly subscription started' : 'Failed to start subscription'),
                                ),
                              );
                              _updateStatus();
                            },
                            child: const Text('Buy Yearly Subscription'),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () async {
                              final success = await premiumService.buyLifetimePurchase();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(success ? 'Lifetime purchase completed' : 'Failed to complete purchase'),
                                ),
                              );
                              _updateStatus();
                            },
                            child: const Text('Buy Lifetime Purchase'),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: () async {
                              await premiumService.restorePurchases();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Purchases restored'),
                                ),
                              );
                              _updateStatus();
                            },
                            child: const Text('Restore Purchases'),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  Consumer<PremiumService>(
                    builder: (context, premiumService, child) {
                      return ElevatedButton(
                        onPressed: () {
                          premiumService.toggleTestMode();
                          _updateStatus();
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: premiumService.isTestMode ? Colors.green : Colors.red,
                        ),
                        child: Text(
                          premiumService.isTestMode ? 'Test Modunu KAPAT' : 'Test Modunu AÇ',
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      _updateStatus();
                    },
                    child: const Text('Refresh Status'),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
