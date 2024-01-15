import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 15),
        const Expanded(child: Divider()),
        const SizedBox(width: 15),
      ],
    );
  }
}
