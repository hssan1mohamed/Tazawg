import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/data/repo/home_repo.dart';

part 'restuarants_state.dart';

class RestuarantsCubit extends Cubit<RestuarantsState> {
  RestuarantsCubit(this.foodHomeRepo) : super(RestuarantsInitial());
  final FoodHomeRepo foodHomeRepo;
  Future<void> fetchRestuarants() async {
    emit(RestuarantsLoading());
    var result = await foodHomeRepo.fetchRestaurant();
    emit(RestuarantsSucess(restuarantsList: result));
  }
}
