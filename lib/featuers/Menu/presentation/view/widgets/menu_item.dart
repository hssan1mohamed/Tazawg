import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_cart.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.menuModel});
final MenuModel menuModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        FoodCart(menuModel: menuModel),
        const SizedBox(height: 8),
        Text(
          menuModel.name,
          style: Styles.textStyle16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              const Opacity(
                opacity: .3,
                child: Text(
                  "السعر",
                  style: Styles.textStyle18,
                ),
              ),
              const Spacer(),
              Text(
               menuModel.price + "  ج.م ",
                style: Styles.textStyle16.copyWith(color: Constant.kprimaryColor),
              ),
            ],
          ),
        ),
        const Divider(thickness: 2),
       const SizedBox(height: 6),
      ],
    );
  }
}
