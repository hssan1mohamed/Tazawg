import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/Catogary.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/backgroundimage.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Background(),
          SizedBox(height: 40),
          Catogary(),
          SizedBox(height: 40),
          Catogary(),
        ],
      ),
    );
  }
}
