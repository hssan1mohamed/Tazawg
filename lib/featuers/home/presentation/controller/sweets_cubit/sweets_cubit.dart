import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/core/utls/api_servces.dart';
import 'package:tazawg/featuers/home/data/restaurant_model.dart';
import 'package:tazawg/featuers/home/presentation/controller/sweets_cubit/sweets_states.dart';

class SweetsCubit extends Cubit<SweetsStates> {
  SweetsCubit() : super(SweetInitial());

  getCafesData() async {
    emit(SweetLoading());
    try {
      List<CategoryModel> cates = [];
      var result = await ApiService().get(endPoint: 'Sweets');
      for (var element in result.docs) {
        cates.add(CategoryModel.frfirebase(element));
      }
    
      emit(SweetDone(categoryModel: cates));
    } catch (error) {
    
      emit(SweetError(error: error.toString()));
    }
  }
}
