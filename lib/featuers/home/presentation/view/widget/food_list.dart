import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/food_details.dart';

class ListFood extends StatelessWidget {
  const ListFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 20),
            child: FoodDetails(),
          );
        },
      ),
    );
  }
}
