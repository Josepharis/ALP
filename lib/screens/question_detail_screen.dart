import 'package:flutter/material.dart';
import '../models/question.dart';
import '../l10n/app_localizations.dart';

class QuestionDetailScreen extends StatelessWidget {
  final Question question;

  const QuestionDetailScreen({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A237E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(AppLocalizations.of(context)!.detailedInformation),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildQuestionCard(context),
            const SizedBox(height: 16),
            _buildExplanationCard(context),
            const SizedBox(height: 16),
            _buildReferencesCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionCard(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.question,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              question.question,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExplanationCard(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.explanation,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              question.explanation ??
                  AppLocalizations.of(context)!.noExplanationAvailable,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReferencesCard(BuildContext context) {
    if (question.references == null || question.references!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Card(
      color: Colors.white.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.references,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...question.references!.map(
              (reference) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  reference,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
