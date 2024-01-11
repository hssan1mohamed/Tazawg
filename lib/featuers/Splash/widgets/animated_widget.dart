import 'package:flutter/material.dart';
import 'package:tazawg/featuers/Splash/widgets/logo.dart';
class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({super.key, required this.slidingAnimation});
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return   AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: slidingAnimation ,
            child: const Logo(),
          );
        }
    );
  }
}
