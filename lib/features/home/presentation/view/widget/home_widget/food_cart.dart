import 'package:flutter/material.dart';

class FoodCart extends StatelessWidget {
  const FoodCart({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 80,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          child: Image.network(img),
        ),
      ],
    );
  }
}
