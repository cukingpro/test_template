import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/feature_item.dart';

// Provider để lấy danh sách tính năng
final featuresProvider = Provider<List<FeatureItem>>((ref) {
  return [
    FeatureItem(
      icon: Icons.widgets_outlined,
      title: 'Clean Architecture',
      description: 'Well-organized code with separation of concerns',
      color: const Color(0xFF8B5CF6), // Purple
    ),
    FeatureItem(
      icon: Icons.color_lens_outlined,
      title: 'Theming',
      description: 'Light and dark mode support with custom colors',
      color: const Color(0xFFEC4899), // Pink
    ),
    FeatureItem(
      icon: Icons.language,
      title: 'Localization',
      description: 'Support for multiple languages',
      color: const Color(0xFF3B82F6), // Blue
    ),
    FeatureItem(
      icon: Icons.layers_outlined,
      title: 'Multiple Environments',
      description: 'Configure for development and production',
      color: const Color(0xFF10B981), // Green
    ),
  ];
}); 