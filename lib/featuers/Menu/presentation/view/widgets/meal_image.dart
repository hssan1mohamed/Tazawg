import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';

class MealImage extends StatelessWidget {
  const MealImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Constant.kprimaryColor
          ,image: const DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiRh_gERsbkGxZCg11qNxCMkJbrobpig38uA&usqp=CAU'
          ),fit: BoxFit.cover
      )
      ),

    );
  }
}