import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/catogary_details_wigets/description.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/catogary_details_wigets/location.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/catogary_details_wigets/menulink.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/catogary_details_wigets/rating.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/home_widget/backgroundimage.dart';

class CategoryDetailsBody extends StatelessWidget {
  const CategoryDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Background(),
        SizedBox(height: 40),
        Row(
          children: [
            Location(location: "Abo Azoz , Dishna , Qena"),
            Spacer(),
            Rating(),
          ],
        ),
        SizedBox(height: 20),
        Description(
          des:
              "this restarant is ver good at heathy food and has a lot of category and delivery sevice and take away",
        ),
        SizedBox(height: 50),
        MenuLink(),
      ],
    );
  }
}
