import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.des});
  final String des;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .7,
      child: Text(
        des,
        style: Styles.textStyle16,
        maxLines: 4,
      ),
    );
  }
}
