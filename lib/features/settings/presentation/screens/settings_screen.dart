import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/settings_tab.dart';

class SettingsScreen extends ConsumerWidget {
  static const String routeName = 'settings';
  static const String routePath = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SettingsTab();
  }
}
