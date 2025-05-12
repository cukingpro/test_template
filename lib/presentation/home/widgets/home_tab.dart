import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomeTab extends ConsumerWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home.title'.tr()),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'home.welcome'.tr(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'home.description'.tr(),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Features',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              _buildFeaturesList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturesList(BuildContext context) {
    final features = [
      _FeatureItem(
        icon: Icons.widgets_outlined,
        title: 'Clean Architecture',
        description: 'Well-organized code with separation of concerns',
      ),
      _FeatureItem(
        icon: Icons.color_lens_outlined,
        title: 'Theming',
        description: 'Light and dark mode support with custom colors',
      ),
      _FeatureItem(
        icon: Icons.language,
        title: 'Localization',
        description: 'Support for multiple languages',
      ),
      _FeatureItem(
        icon: Icons.layers_outlined,
        title: 'Multiple Environments',
        description: 'Configure for development and production',
      ),
    ];

    return Expanded(
      child: ListView.builder(
        itemCount: features.length,
        itemBuilder: (context, index) {
          final feature = features[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: Icon(feature.icon),
              title: Text(feature.title),
              subtitle: Text(feature.description),
            ),
          );
        },
      ),
    );
  }
}

class _FeatureItem {
  final IconData icon;
  final String title;
  final String description;

  _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });
}
