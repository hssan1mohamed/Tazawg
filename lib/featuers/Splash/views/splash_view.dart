import 'package:flutter/material.dart';
import 'package:tazawg/featuers/splash/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: SplashViewBody()));
  }
}
