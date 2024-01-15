import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/data/repo/home_repo.dart';

part 'cafes_state.dart';

class CafesCubit extends Cubit<CafesState> {
  CafesCubit(this.foodHomeRepo) : super(CafesInitial());
  final FoodHomeRepo foodHomeRepo;
  Future<void> fetchCafes() async {
    emit(CafesLoading());
    var result = await foodHomeRepo.fetchCafes();
    emit(CafesSucess(cafesList: result));
  }
}
