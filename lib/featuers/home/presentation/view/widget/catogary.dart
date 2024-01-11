import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_list.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/textdivider.dart';

class Cateogary extends StatelessWidget {
  const Cateogary({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDivider(title: title),
          const SizedBox(height: 10),
          const ListFood()
        ],
      ),
    );
  }
}
