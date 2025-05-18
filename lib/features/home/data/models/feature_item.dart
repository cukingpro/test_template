import 'package:flutter/material.dart';

class FeatureItem {
  final IconData icon;
  final String title;
  final String description;
  final Color? color;

  FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
    this.color,
  });
} 