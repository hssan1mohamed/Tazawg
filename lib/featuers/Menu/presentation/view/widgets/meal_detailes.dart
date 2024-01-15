import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/custom_row_meal.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/meal_image.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({
    super.key, required this.menuModel,
  });
final MenuModel menuModel;
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // textDirection: TextDirection.rtl,
          children: [
            const Divider(
              thickness: 3,
              color: Colors.white,
              endIndent: 120,
              indent: 120,
            ),
            const SizedBox(
              height: 16,
            ),
            MealImage(menuModel:menuModel),
            const SizedBox(
              height: 16,
            ),
            const CustomRowMeal(),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "التفاصيل",
              style: Styles.textStyle25,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              textDirection: TextDirection.rtl,
              menuModel.details,
              softWrap: true,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16,
            ),
          ]),
    );
  }
}
