import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/meal_detailes.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/menu_item.dart';

class CustomGirdelView extends StatelessWidget {
  const CustomGirdelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 10, // Number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  elevation: 5,
                  backgroundColor: Constant.kbackgroundcolor,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      height: 600,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 32),
                      child: const meal_details(),
                    );
                  },
                );
              },
              child: const MenuItem());
        });
  }
}
