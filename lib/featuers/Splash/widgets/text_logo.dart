import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Ta",
          style: Styles.textStyle30,
        ),
        Text(
          "Z",
          style: Styles.textStyle30.copyWith(color: Constant.kprimaryColor),
        ),
        const Text(
          "wag",
          style: Styles.textStyle30,
        ),
      ],
    );
  }
}
