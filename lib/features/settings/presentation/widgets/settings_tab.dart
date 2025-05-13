import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../core/localization/app_localization.dart';
import '../../../../core/theme/theme_manager.dart';

class SettingsTab extends ConsumerWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('settings.title'.tr()),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // Theme Section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'settings.theme.title'.tr(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    RadioListTile<ThemeMode>(
                      title: Text('settings.theme.light'.tr()),
                      value: ThemeMode.light,
                      groupValue: currentThemeMode,
                      onChanged: (ThemeMode? value) {
                        if (value != null) {
                          ref.read(themeProvider.notifier).setTheme(value);
                        }
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      title: Text('settings.theme.dark'.tr()),
                      value: ThemeMode.dark,
                      groupValue: currentThemeMode,
                      onChanged: (ThemeMode? value) {
                        if (value != null) {
                          ref.read(themeProvider.notifier).setTheme(value);
                        }
                      },
                    ),
                    RadioListTile<ThemeMode>(
                      title: Text('settings.theme.system'.tr()),
                      value: ThemeMode.system,
                      groupValue: currentThemeMode,
                      onChanged: (ThemeMode? value) {
                        if (value != null) {
                          ref.read(themeProvider.notifier).setTheme(value);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Language Section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'settings.language.title'.tr(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    RadioListTile<String>(
                      title: Text('settings.language.english'.tr()),
                      value: 'en',
                      groupValue: AppLocalization.getCurrentLanguageCode(context),
                      onChanged: (String? value) {
                        if (value != null) {
                          AppLocalization.setLocale(context, value);
                        }
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('settings.language.vietnamese'.tr()),
                      value: 'vi',
                      groupValue: AppLocalization.getCurrentLanguageCode(context),
                      onChanged: (String? value) {
                        if (value != null) {
                          AppLocalization.setLocale(context, value);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // About Section
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'settings.about.title'.tr(),
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'settings.about.description'.tr(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          '${'settings.about.version'.tr()}: ',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          'app.version'.tr(),
                          style: Theme.of(context).textTheme.bodyMedium,
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
  }
}
