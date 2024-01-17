import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/core/utls/api_servces.dart';
import 'package:tazawg/featuers/home/data/restaurant_model.dart';
import 'package:tazawg/featuers/home/presentation/controller/restaurant_cubit/restaurant_state.dart';


class RestaurantCubit extends Cubit<RestaurantState> {
  RestaurantCubit() : super(RestaurantInitial());
  
  getData()async{
    emit(RestaurantLoading());
    try {
      List<CategoryModel> cates = [];
      var result = await ApiService().get(endPoint: 'Restaurants');
      result.docs.forEach((element) {
        cates.add(CategoryModel.frfirebase(element));
      });
      print(cates);
      emit(RestaurantDone(categoryModel: cates));
    } catch (error) {
      print(error);
      emit(RestaurantError(error: error.toString()));
    }
  } 
}
