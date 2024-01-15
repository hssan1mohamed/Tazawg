import 'package:flutter/material.dart';
import 'package:tazawg/features/search/presentation/view/widget/search_food_cart.dart';

class FoodListSearch extends StatelessWidget {
  const FoodListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const SearchFoodCart();
      },
    );
  }
}
