import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
       const Expanded(child: Divider(thickness: 2,)),
        const SizedBox(width: 15),
        Text(
          title,
          style: Styles.textStyle18,
        ),
        const SizedBox(width: 15),

      ],
    );
  }
}
