import 'package:flutter/material.dart';

import 'food_list.dart';
import 'textdivider.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TextDivider(), SizedBox(height: 20), ListFood()],
    );
  }
}
