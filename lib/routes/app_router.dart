import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/storage/app_storage.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../features/settings/presentation/screens/settings_screen.dart';
import '../features/splash/presentation/screens/splash_screen.dart';

// The router notifier instance
final routerNotifierProvider = Provider<RouterNotifier>((ref) {
  return RouterNotifier(ref);
});

// The router instance
final routerProvider = Provider<GoRouter>((ref) {
  final router = ref.watch(routerNotifierProvider);
  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: router,
    initialLocation: SplashScreen.routePath,
    routes: router.routes,
    redirect: router.redirectLogic,
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;
  static const String _hasCompletedOnboardingKey = 'hasCompletedOnboarding';

  RouterNotifier(this._ref);

  List<RouteBase> get routes => [
        GoRoute(
          path: SplashScreen.routePath,
          name: SplashScreen.routeName,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: OnboardingScreen.routePath,
          name: OnboardingScreen.routeName,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: HomeScreen.routePath,
          name: HomeScreen.routeName,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: SettingsScreen.routePath,
          name: SettingsScreen.routeName,
          builder: (context, state) => const SettingsScreen(),
        ),
      ];

  String? redirectLogic(BuildContext context, GoRouterState state) {
    final isOnSplashScreen = state.matchedLocation == SplashScreen.routePath;
    final isOnboardingCompleted = AppStorage.getBool(_hasCompletedOnboardingKey);

    // Splash screen logic
    if (isOnSplashScreen) {
      return null; // Allow showing splash screen
    }

    // Onboarding logic
    if (!isOnboardingCompleted) {
      // Not completed onboarding, redirect unless already there
      final isOnOnboardingScreen = state.matchedLocation == OnboardingScreen.routePath;
      return isOnOnboardingScreen ? null : OnboardingScreen.routePath;
    }

    // Normal flow - after onboarding completed
    return null;
  }

  void setOnboardingCompleted() {
    AppStorage.setBool(_hasCompletedOnboardingKey, true);
    notifyListeners();
  }
}
