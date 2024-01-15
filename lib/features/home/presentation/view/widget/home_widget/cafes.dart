import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/core/utls/customloadingindicatorr.dart';
import 'package:tazawg/features/home/presentation/manager/cafe_cubit/cafes_cubit.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/catogary.dart';

class Cafes extends StatelessWidget {
  const Cafes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CafesCubit, CafesState>(
      builder: (context, state) {
        if (state is CafesSucess) {
          return Category(name: "Cafes", categorList: state.cafesList);
        }
        return const CustomcLoadingIndicator();
      },
    );
  }
}
