import 'package:flutter/material.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/presentation/view/widget/catogary_details_wigets/category_details_body.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryDetailsBody(categoryModel: categoryModel),
    );
  }
}
