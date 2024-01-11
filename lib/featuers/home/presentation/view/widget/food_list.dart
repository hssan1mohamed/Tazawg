import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_details.dart';

class ListFood extends StatelessWidget {
  const ListFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,//MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 10),
            child: FoodDetails(),
          );
        },
      ),
    );
  }
}
