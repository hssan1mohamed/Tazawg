import 'package:flutter/material.dart';
import 'package:tazawg/featuers/search/presentation/view/widget/CustomTextfield.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: CustomTextfield(),
          ),
        ),
      ],
    );
  }
}
