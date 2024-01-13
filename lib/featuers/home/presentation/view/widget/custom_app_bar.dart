import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(RoutesApp.kSearch);
              },
              icon: const Icon(
                Icons.search,
                size: 26,
              )),
          const Spacer(),
          const Text('تذوق', style: Styles.textStyle25),
        ],
      ),
    );
  }
}
