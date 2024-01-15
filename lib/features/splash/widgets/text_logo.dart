import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({
    super.key,
    this.size = Styles.textStyle30,
  });
  final TextStyle size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ta",
          style: size,
        ),
        Text(
          "Z",
          style: size.copyWith(color: Constant.kprimaryColor),
        ),
        Text(
          "wag",
          style: size,
        ),
      ],
    );
  }
}
