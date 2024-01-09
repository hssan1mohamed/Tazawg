import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/splash/widgets/logo.dart';
import 'package:tazawg/featuers/splash/widgets/text_logo.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Logo(size: 50),
        TextLogo(size: Styles.textStyle25),
        Opacity(
          opacity: .3,
          child: Text(
            "Special & Delicious Foods",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
