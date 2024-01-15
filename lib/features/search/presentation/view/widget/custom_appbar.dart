import 'package:flutter/material.dart';
import 'package:tazawg/features/search/presentation/view/widget/CustomTextfield.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: CustomTextfield(),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              size: 28,
            ))
      ],
    );
  }
}
