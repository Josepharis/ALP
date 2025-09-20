import 'package:flutter/material.dart';
import 'dart:async';
import '../l10n/app_localizations.dart';
import '../models/tutorial_step.dart';

class InteractiveTutorial extends StatefulWidget {
  final List<TutorialStep> steps;
  final VoidCallback? onComplete;
  final bool showSkipButton;
  final bool dismissible;

  const InteractiveTutorial({
    Key? key,
    required this.steps,
    this.onComplete,
    this.showSkipButton = true,
    this.dismissible = true,
  }) : super(key: key);

  @override
  State<InteractiveTutorial> createState() => _InteractiveTutorialState();

  static Future<void> show(
    BuildContext context, {
    required List<TutorialStep> steps,
    VoidCallback? onComplete,
    bool showSkipButton = true,
    bool dismissible = true,
  }) async {
    return showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return InteractiveTutorial(
          steps: steps,
          onComplete: onComplete,
          showSkipButton: showSkipButton,
          dismissible: dismissible,
        );
      },
    );
  }
}

class _InteractiveTutorialState extends State<InteractiveTutorial>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentIndex < widget.steps.length - 1) {
      _animationController.reset();
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      _animationController.forward();
    } else {
      Navigator.of(context).pop();
      if (widget.onComplete != null) {
        widget.onComplete!();
      }
    }
  }

  void _previousPage() {
    if (_currentIndex > 0) {
      _animationController.reset();
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      _animationController.forward();
    }
  }

  void _skipTutorial() {
    Navigator.of(context).pop();
    if (widget.onComplete != null) {
      widget.onComplete!();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Container(
        width: screenSize.width * 0.9,
        height: screenSize.height * 0.6,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade900, Colors.purple.shade900],
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Column(
            children: [
              _buildHeader(),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: widget.steps.length,
                  itemBuilder: (context, index) {
                    final step = widget.steps[index];
                    return FadeTransition(
                      opacity: _fadeAnimation,
                      child: _buildStep(step),
                    );
                  },
                ),
              ),
              _buildControls(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade800.withOpacity(0.7),
            Colors.purple.shade800.withOpacity(0.7),
          ],
        ),
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            l10n.tutorialAppTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (widget.showSkipButton)
            TextButton(
              onPressed: _skipTutorial,
              child: Text(
                l10n.tutorialSkip,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStep(TutorialStep step) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(step.icon, size: 64, color: step.color),
          const SizedBox(height: 24),
          Text(
            step.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            step.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 24),
          if (step.image.isNotEmpty)
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(step.image, fit: BoxFit.cover),
                ),
              ),
            ),
          if (step.isActionButton)
            ElevatedButton(
              onPressed: () {
                if (step.routeToNavigate != null) {
                  Navigator.of(context).pushNamed(step.routeToNavigate!);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: step.color,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(AppLocalizations.of(context)!.tutorialExploreNow),
            ),
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade900.withOpacity(0.7),
            Colors.purple.shade900.withOpacity(0.7),
          ],
        ),
        border: Border(
          top: BorderSide(color: Colors.white.withOpacity(0.2), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _currentIndex > 0
              ? IconButton(
                icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                onPressed: _previousPage,
              )
              : const SizedBox(width: 48),
          Row(
            children: List.generate(
              widget.steps.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color:
                      _currentIndex == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              _currentIndex < widget.steps.length - 1
                  ? Icons.arrow_forward_rounded
                  : Icons.check_circle_rounded,
              color: Colors.white,
            ),
            onPressed: _nextPage,
          ),
        ],
      ),
    );
  }
}
