import 'package:flutter/material.dart';
import 'package:tazawg/featuers/search/presentation/view/widget/food_details_search.dart';
import 'package:tazawg/featuers/search/presentation/view/widget/food_image.dart';

class SearchFoodCart extends StatelessWidget {
  const SearchFoodCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(
            children: [
              FoodImage(),
              SizedBox(width: 30),
              Expanded(child: FoodDetailsSearch()),
            ],
          ),
          SizedBox(height: 8),
          Divider(indent: 4, endIndent: 4, thickness: .3),
          SizedBox(height: 15)
        ],
      ),
    );
  }
}
