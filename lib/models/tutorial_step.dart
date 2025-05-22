import 'package:flutter/material.dart';

class TutorialStep {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final String image;
  final String? routeToNavigate;
  final bool isActionButton;

  TutorialStep({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.image = '',
    this.routeToNavigate,
    this.isActionButton = false,
  });
}

class Feature {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Feature({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}
