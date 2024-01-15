import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .4,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
          color: Colors.white),
      child: Image.network(img),
    );
  }
}
