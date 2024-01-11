import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'animated_widget.dart';
import 'package:tazawg/featuers/splash/widgets/text_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    navigateToHome();
    initSlideAnimation();
  }

  @override
  void dispose() {
    // Don't forget to dispose the controller when the widget is disposed
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedLogo(slidingAnimation: slidingAnimation),
        const SizedBox(height: 16),
        const TextLogo()
      ],
    );
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0.0, -10.0),
      end: const Offset(0.0, 0.0),
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        GoRouter.of(context).push(RoutesApp.kHome);
      },
    );
  }
}
