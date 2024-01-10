import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.dehaze)),
      ],
    );
  }
}
