import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/featuers/Menu/presentation/controller/menu_cubit/menu_cubit.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/meal_detailes.dart';
import 'package:tazawg/featuers/Menu/presentation/view/widgets/menu_item.dart';

class CustomGirdelView extends StatelessWidget {
  const CustomGirdelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MenuCubit, MenuState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is MenuDoneState) {
          return GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.85,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: state.menu.length, // Number of items in the grid
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        elevation: 5,
                        backgroundColor: Constant.kbackgroundcolor,
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: 600,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 32),
                            child: MealDetails(
                              menuModel: state.menu[index],
                            ),
                          );
                        },
                      );
                    },
                    child: MenuItem(
                      menuModel: state.menu[index],
                    ));
              });
        } else if (state is MenuErrorState) {
          return Center(
            child: Text(state.error),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
