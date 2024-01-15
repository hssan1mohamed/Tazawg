import 'package:flutter/material.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/backgroundimage.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/cafes.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/resturantList.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/sweets_shope.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Background(
          img:
              "https://lh5.googleusercontent.com/p/AF1QipMyNWsksJir-Ebu6JDIb22kmkyU5FGcs6vots1-=w141-h141-n-k-no-nu",
        ),
        SizedBox(height: 40),
        Restuarants(),
        SizedBox(height: 40),
        Cafes(),
        SizedBox(height: 40),
        SweetShopes(),
      ],
    ));
  }
}
