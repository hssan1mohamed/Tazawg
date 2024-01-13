import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class CustomRowMeal extends StatelessWidget {
  const CustomRowMeal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        const Text(
          "وجبة التوفير",
          style: Styles.textStyle25,
        ),
        const Spacer(),
        Text(
          "20" + "ج.م",
          style: Styles.textStyle25.copyWith(color: Constant.kprimaryColor),
        ),
      ],
    );
  }
}
