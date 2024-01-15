import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
  });
  static String? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        onSubmitted: (v) {},
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(
            Icons.search_sharp,
            color: Colors.black,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
