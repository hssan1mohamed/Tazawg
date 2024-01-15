import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/widgets/customButton.dart';
import 'package:tazawg/features/auth/presentation/view/widgets/discount.dart';
import 'package:tazawg/features/auth/presentation/view/widgets/logoSection.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const LogoSection(),
          const SizedBox(height: 30),
          CustomButtom(
              backgroundcolor: Constant.kprimaryColor,
              text: "Sign In",
              onPressed: () {}),
          const SizedBox(height: 15),
          CustomButtom(
            backgroundcolor: Colors.white,
            text: "Sign Up",
            onPressed: () {},
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Discount(),
          ),
        ],
      ),
    );
  }
}
