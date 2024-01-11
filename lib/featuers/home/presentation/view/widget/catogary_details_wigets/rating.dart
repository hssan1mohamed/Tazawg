import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 25),
        Icon(Icons.star, color: Colors.yellow, size: 25),
        Icon(Icons.star, color: Colors.yellow, size: 25),
        Icon(Icons.star, color: Colors.yellow, size: 25),
        Icon(Icons.star, color: Colors.yellow, size: 25),
      ],
    );
  }
}
