import 'package:flutter/material.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';

import 'food_list.dart';
import 'textdivider.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.categorList, required this.name});
  final List<CategoryModel> categorList;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextDivider(name: name),
        const SizedBox(height: 20),
        ListFood(
          categorList: categorList,
        )
      ],
    );
  }
}
