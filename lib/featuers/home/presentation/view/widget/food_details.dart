import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/core/widgets/customButton.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_cart.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(RoutesApp.kMenu);
      },
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: [
          FoodCart(),
          SizedBox(height: 8),
          Text(
            "زاد",
            style: Styles.textStyle16,
          ),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}
