import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({
    super.key,
    this.size = Styles.textStyle50,
  });
  final TextStyle size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ق",
          style: size,
        ),
        Text(
          "و",
          style: size.copyWith(color: Constant.kprimaryColor),
        ),
        Text(
          "تذ",
          style: size,
        ),
      ],
    );
  }
}
