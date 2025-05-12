import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../config/router/app_router.dart';
import '../home/home_screen.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  static const String routeName = 'onboarding';
  static const String routePath = '/onboarding';

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPage> _pages = [
    OnboardingPage(
      image: const FlutterLogo(size: 150),
      titleKey: 'onboarding.page1.title',
      descriptionKey: 'onboarding.page1.description',
    ),
    OnboardingPage(
      image: const Icon(Icons.color_lens_outlined, size: 150),
      titleKey: 'onboarding.page2.title',
      descriptionKey: 'onboarding.page2.description',
    ),
    OnboardingPage(
      image: const Icon(Icons.rocket_launch_outlined, size: 150),
      titleKey: 'onboarding.page3.title',
      descriptionKey: 'onboarding.page3.description',
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 300),
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

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) => _pages[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip button
                  TextButton(
                    onPressed: _onSkip,
                    child: Text('common.skip'.tr()),
                  ),

                  // Pagination indicators
                  Row(
                    children: List.generate(
                      _pages.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == _currentPage ? Theme.of(context).colorScheme.primary : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),

                  // Next/Done button
                  ElevatedButton(
                    onPressed: _onNextPage,
                    child: Text(
                      isLastPage ? 'common.done'.tr() : 'common.next'.tr(),
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
  final Widget image;
  final String titleKey;
  final String descriptionKey;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.titleKey,
    required this.descriptionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(height: 48),
          Text(
            titleKey.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            descriptionKey.tr(),
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
