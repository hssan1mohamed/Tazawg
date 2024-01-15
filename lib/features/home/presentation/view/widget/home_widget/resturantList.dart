import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/core/utls/customloadingindicatorr.dart';
import 'package:tazawg/features/home/presentation/manager/resturant_cubit/restuarants_cubit.dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/catogary.dart';

class Restuarants extends StatelessWidget {
  const Restuarants({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestuarantsCubit, RestuarantsState>(
      builder: (context, state) {
        if (state is RestuarantsSucess) {
          return Category(
              name: "Restuarants", categorList: state.restuarantsList);
        }
        return const CustomcLoadingIndicator();
      },
    );
  }
}
