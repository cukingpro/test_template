import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../../../routes/app_router.dart';
import '../../../../features/home/presentation/screens/home_screen.dart';
import '../../../../core/localization/localization.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  static const String routeName = 'onboarding';
  static const String routePath = '/onboarding';

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  int _currentPage = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      icon: Icons.flutter_dash,
      iconColor: const Color(0xFF54C5F8),
      titleKey: 'onboarding.page1.title',
      descriptionKey: 'onboarding.page1.description',
    ),
    OnboardingPage(
      icon: Icons.color_lens_outlined,
      iconColor: const Color(0xFFFF8A65),
      titleKey: 'onboarding.page2.title',
      descriptionKey: 'onboarding.page2.description',
    ),
    OnboardingPage(
      icon: Icons.rocket_launch_outlined,
      iconColor: const Color(0xFF66BB6A),
      titleKey: 'onboarding.page3.title',
      descriptionKey: 'onboarding.page3.description',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn)
    );
    
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
    _animationController.reset();
    _animationController.forward();
  }

  void _onNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  void _onSkip() {
    _completeOnboarding();
  }

  void _completeOnboarding() {
    // Mark onboarding as completed
    final routerNotifier = ref.read(routerNotifierProvider);
    routerNotifier.setOnboardingCompleted();

    // Navigate to home screen
    context.go(HomeScreen.routePath);
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentPage == _pages.length - 1;
    final theme = ShadTheme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) => FadeTransition(
                  opacity: _fadeAnimation,
                  child: _pages[index],
                ),
              ),
            ),
            ShadSeparator.horizontal(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              color: theme.colorScheme.border,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip button
                  ShadButton.ghost(
                    onPressed: _onSkip,
                    child: Text(LocaleKeys.common_skip.tr()),
                  ),

                  // Pagination indicators
                  Row(
                    children: List.generate(
                      _pages.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: index == _currentPage ? 24 : 10,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: index == _currentPage ? theme.colorScheme.primary : theme.colorScheme.muted,
                        ),
                      ),
                    ),
                  ),

                  // Next/Done button
                  ShadButton(
                    onPressed: _onNextPage,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          isLastPage ? LocaleKeys.common_done.tr() : LocaleKeys.common_next.tr(),
                        ),
                        if (!isLastPage) const SizedBox(width: 8),
                        if (!isLastPage) const Icon(Icons.arrow_forward, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String titleKey;
  final String descriptionKey;

  const OnboardingPage({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.titleKey,
    required this.descriptionKey,
  });

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShadCard(
            padding: EdgeInsets.zero,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    iconColor.withOpacity(0.1),
                    iconColor.withOpacity(0.3),
                  ],
                ),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 100,
                  color: iconColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 48),
          Text(
            titleKey.tr(),
            style: theme.textTheme.h3,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ShadCard(
            backgroundColor: theme.colorScheme.card,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Text(
              descriptionKey.tr(),
              style: theme.textTheme.large,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
