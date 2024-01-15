import 'package:flutter/material.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/food_details.dart';

class ListFood extends StatelessWidget {
  const ListFood({super.key, required this.categorList});
  final List<CategoryModel> categorList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: FoodDetails(
              categoryModel: categorList[index],
            ),
          );
        },
      ),
    );
  }
}
