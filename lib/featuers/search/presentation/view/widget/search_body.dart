import 'package:flutter/material.dart';
import 'package:tazawg/featuers/search/presentation/view/widget/appbar.dart';
import 'package:tazawg/featuers/search/presentation/view/widget/custom_appbar.dart';
import 'package:tazawg/featuers/search/presentation/view/widget/food_list%20_search.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          children: [
            Appbar(),
            SizedBox(height: 20),
            CustomAppBar(),
            SizedBox(height: 20),
          ],
        )),
        SliverFillRemaining(child: FoodListSearch())
      ],
    );
  }
}
