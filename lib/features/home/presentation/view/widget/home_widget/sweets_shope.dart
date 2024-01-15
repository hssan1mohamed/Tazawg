import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/core/utls/customloadingindicatorr.dart';
import 'package:tazawg/features/home/presentation/manager/sweet_shope_cubit/sweets_shope..dart';
import 'package:tazawg/features/home/presentation/view/widget/home_widget/catogary.dart';

class SweetShopes extends StatelessWidget {
  const SweetShopes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SweetsShopeCubitCubit, SweetsShopeCubitState>(
      builder: (context, state) {
        if (state is SweetsShopeCubitSucess) {
          return Category(
              name: "Sweet shops", categorList: state.sweets_shopeList);
        }
        return const CustomcLoadingIndicator();
      },
    );
  }
}
