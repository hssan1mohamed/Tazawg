import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/core/widgets/customButton.dart';

class FoodDetailsSearch extends StatelessWidget {
  const FoodDetailsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Food Name",
          style: Styles.textStyle16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Opacity(
            opacity: .4,
            child: Text(
              "this food is good to inhance your muslces daily ,and help you to run and practice your favourite sport",
              style: Styles.textStyle14,
            ),
          ),
        ),
        Row(
          children: [
            const Text(
              "price",
              style: Styles.textStyle16,
            ),
            const Spacer(),
            CustomButtom(
                backgroundcolor: Constant.kprimaryColor,
                text: "add cart",
                onPressed: () {})
          ],
        )
      ],
    );
  }
}
