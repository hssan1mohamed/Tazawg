import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/home_widget/backgroundimage.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/home_widget/catogary.dart';

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
          Category(),
          SizedBox(height: 40),
          Category(),
        ],
      ),
    );
  }
}
