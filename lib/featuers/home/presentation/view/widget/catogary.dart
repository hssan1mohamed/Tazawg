import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_list.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/textdivider.dart';

class Catogary extends StatelessWidget {
  const Catogary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TextDivider(), SizedBox(height: 20), ListFood()],
    );
  }
}
