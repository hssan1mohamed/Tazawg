import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/food_cart.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          RoutesApp.kcategorydetails,
          extra: categoryModel,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FoodCart(img: categoryModel.img),
          const SizedBox(height: 10),
          Text(
            categoryModel.name,
            style: Styles.textStyle16,
          ),
          Opacity(
            opacity: .3,
            child: Text(
              categoryModel.address,
              style: Styles.textStyle14,
            ),
          ),
        ],
      ),
    );
  }
}
