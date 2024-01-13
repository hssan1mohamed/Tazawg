import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/custom_gridel_view.dart';


class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('مطعم زاد', style: Styles.textStyle25),
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body:const CustomGirdelView()


    );
  }
}

