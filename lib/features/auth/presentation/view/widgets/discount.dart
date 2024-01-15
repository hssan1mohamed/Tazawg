import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class Discount extends StatelessWidget {
  const Discount({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Constant.kprimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          width: MediaQuery.of(context).size.width * .9,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("15 %", style: Styles.textStyle30.copyWith(fontSize: 50)),
                const Text("Discount", style: Styles.textStyle25),
                const Opacity(
                    opacity: .6,
                    child: Text("From our store", style: Styles.textStyle14)),
              ],
            ),
          ),
        ),
        Positioned(
          right: 1,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(800),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                )),
            width: MediaQuery.of(context).size.width * .5,
            height: 200,
          ),
        ),
      ],
    );
  }
}
