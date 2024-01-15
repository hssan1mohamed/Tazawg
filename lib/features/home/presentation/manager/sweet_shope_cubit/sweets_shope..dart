import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/data/repo/home_repo.dart';

part 'sweets_shope_cubit_state.dart';

class SweetsShopeCubitCubit extends Cubit<SweetsShopeCubitState> {
  SweetsShopeCubitCubit(this.foodHomeRepo) : super(SweetsShopeCubitInitial());
  final FoodHomeRepo foodHomeRepo;
  Future<void> fetchSweets_shpoe() async {
    emit(SweetsShopeCubitLoading());
    var result = await foodHomeRepo.fetchSweetshop();
    emit(SweetsShopeCubitSucess(sweets_shopeList: result));
  }
}
