import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/custom_row_meal.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/meal_image.dart';

class meal_details extends StatelessWidget {
  const meal_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // textDirection: TextDirection.rtl,
          children: [
            Divider(
              thickness: 3,
              color: Colors.white,
              endIndent: 120,
              indent: 120,
            ),
            SizedBox(
              height: 16,
            ),
            MealImage(),
            SizedBox(
              height: 16,
            ),
            CustomRowMeal(),
            SizedBox(
              height: 16,
            ),
            Text(
              "التفاصيل",
              style: Styles.textStyle25,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              textDirection: TextDirection.rtl,
              " dhkjsalfhd skbfjkhdjkfh adjahfjkhdjs hjfhlds التفاصيل",
              softWrap: true,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16,
            ),
          ]),
    );
  }
}
