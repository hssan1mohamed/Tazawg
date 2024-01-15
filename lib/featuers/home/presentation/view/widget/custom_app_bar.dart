import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/home/presentation/controller/Imagest_cubit/images_cubit.dart';

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
                BlocProvider.of<ImagesCubit>(context).getImages();
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
