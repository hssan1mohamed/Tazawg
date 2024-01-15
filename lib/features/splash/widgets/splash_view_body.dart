import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/navigate.dart';
import 'package:tazawg/core/utls/routesApp.dart';

import 'package:tazawg/features/splash/widgets/logo.dart';
import 'package:tazawg/features/splash/widgets/text_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      navigateToPage(context, RoutesApp.kHome);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Logo(), TextLogo()],
    );
  }
}
