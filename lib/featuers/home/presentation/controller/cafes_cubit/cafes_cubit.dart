import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/core/utls/api_servces.dart';
import 'package:tazawg/featuers/home/data/restaurant_model.dart';
import 'package:tazawg/featuers/home/presentation/controller/cafes_cubit/cafes_states.dart';

class CafesCubit extends Cubit<CafesStates>{
  CafesCubit(super.initialState);
  

  getCafesData()async{
    emit(CafesLoading());
    try {
      List<CategoryModel> cates = [];
      var result = await ApiService().get(endPoint: 'Cafes');
      for (var element in result.docs) {
        cates.add(CategoryModel.frfirebase(element));
      }
 
      emit(CafesDone(categoryModel: cates));
    } catch (error) {
   
      emit(CafesError(error: error.toString()));
    }
  } 
}