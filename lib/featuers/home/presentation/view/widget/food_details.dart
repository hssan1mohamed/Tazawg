import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/core/widgets/customButton.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_cart.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const FoodCart(),
        const SizedBox(height: 10),
        const Text(
          "Food Name",
          style: Styles.textStyle16,
        ),
        const Opacity(
          opacity: .3,
          child: Text(
            "Price",
            style: Styles.textStyle14,
          ),
        ),
        const SizedBox(height: 6),
        CustomButtom(
          backgroundcolor: Constant.kprimaryColor,
          text: "add cart",
          onPressed: () {},
        )
      ],
    );
  }
}
