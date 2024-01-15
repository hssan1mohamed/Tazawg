import 'package:flutter/material.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/presentation/view/widget/catogary_details_wigets/description.dart';
import 'package:tazawg/features/home/presentation/view/widget/catogary_details_wigets/location.dart';
import 'package:tazawg/features/home/presentation/view/widget/catogary_details_wigets/menulink.dart';
import 'package:tazawg/features/home/presentation/view/widget/catogary_details_wigets/rating.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/backgroundimage.dart';

class CategoryDetailsBody extends StatelessWidget {
  const CategoryDetailsBody({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Background(
          img: categoryModel.img,
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            Location(location: categoryModel.address),
            const Spacer(),
            const Rating(),
          ],
        ),
        const SizedBox(height: 20),
        const Description(
          des:
              "this restarant is ver good at heathy food and has a lot of category and delivery sevice and take away",
        ),
        const SizedBox(height: 50),
        const MenuLink(),
      ],
    );
  }
}
