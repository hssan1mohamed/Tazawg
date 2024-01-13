import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_cart.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        FoodCart(),
        SizedBox(height: 8),
        Text(
          "دجاج مقلى",
          style: Styles.textStyle16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              const Opacity(
                opacity: .3,
                child: Text(
                  "السعر",
                  style: Styles.textStyle18,
                ),
              ),
              Spacer(),
              Text(
                "20" + "ج.م",
                style: Styles.textStyle16.copyWith(color: Constant.kprimaryColor),
              ),
            ],
          ),
        ),
        Divider(thickness: 2),
        SizedBox(height: 6),
      ],
    );
  }
}
