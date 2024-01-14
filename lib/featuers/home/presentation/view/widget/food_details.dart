import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/core/widgets/customButton.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_cart.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(RoutesApp.kMenu);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: [
          FoodCart(
            menuModel: MenuModel(
                image:
                    'https://firebasestorage.googleapis.com/v0/b/resturant-2973f.appspot.com/o/img%2Fimage2023-05-26%2013%3A28%3A53.050321?alt=media&token=786916b3-9b11-4e98-963d-11fcec3a964d',
                price: '20',
                details: '',
                name: 'freee',
                shopId: ''),
          ),
          const SizedBox(height: 8),
          const Text(
            "زاد",
            style: Styles.textStyle16,
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
