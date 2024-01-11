import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.size = 70});
  final double size;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: size,
      backgroundColor: Colors.white,
      child: Image.asset('assets/images/logo.png',fit: BoxFit.fill),
    );
  }
}
