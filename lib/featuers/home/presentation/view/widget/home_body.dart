import 'package:flutter/material.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/Catogary.dart';
import 'custom_app_bar.dart';
import 'package:tazawg/featuers/home/presentation/view/widget/backgroundimage.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Background(),
          SizedBox(height: 24),
          Cateogary(title: 'المطاعم'),
          Cateogary(title: 'الكافيهات'),
          Cateogary(title: 'محلات الحلويات'),
        ],
      ),
    );
  }
}
