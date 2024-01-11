import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/widgets/customButton.dart';

class MenuLink extends StatelessWidget {
  const MenuLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtom(
              height: 40,
              width: double.infinity,
              backgroundcolor: Constant.kprimaryColor,
              text: "Menu",
              onPressed: () {}),
        ),
        const SizedBox(width: 20),
        const Icon(
          Icons.facebook,
          size: 30,
        )
      ],
    );
  }
}
