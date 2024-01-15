import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
