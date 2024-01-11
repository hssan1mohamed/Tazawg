import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Catogary Name",
          style: Styles.textStyle18,
        ),
        SizedBox(width: 15),
        Expanded(child: Divider()),
        SizedBox(width: 15),
      ],
    );
  }
}
