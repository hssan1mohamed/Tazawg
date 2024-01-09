import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/navigate.dart';
import 'package:tazawg/core/utls/routesApp.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      navigateToPage(context, RoutesApp.kHome);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
