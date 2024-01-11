import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/core/widgets/customButton.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_cart.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        FoodCart(),
        SizedBox(height: 8),
        Text(
          "زاد",
          style: Styles.textStyle16,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   textDirection: TextDirection.rtl,
        //   children: [
        //     const Opacity(
        //       opacity: .3,
        //       child: Text(
        //         "السعر",
        //         style: Styles.textStyle14,
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 16,
        //     ),
        //     Text(
        //       "20" + "ج.م",
        //       style: Styles.textStyle16.copyWith(color: Constant.kprimaryColor),
        //     ),
        //   ],
        // ),
        SizedBox(height: 6),
      ],
    );
  }
}
