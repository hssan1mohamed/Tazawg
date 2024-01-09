import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

// ignore: must_be_immutable
class CustomButtom extends StatelessWidget {
  CustomButtom(
      {super.key,
      required this.backgroundcolor,
      required this.text,
      this.borderRadius,
      required this.onPressed,
      this.height = 48,
      this.width = 200});
  final Color backgroundcolor;
  final double height;
  final double width;
  final Function()? onPressed;
  BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(25)),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: backgroundcolor == Constant.kprimaryColor
                  ? Colors.white
                  : Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
