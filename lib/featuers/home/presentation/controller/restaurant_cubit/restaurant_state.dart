import 'package:tazawg/featuers/home/data/restaurant_model.dart';

class RestaurantState {}
class RestaurantInitial extends RestaurantState{}
class RestaurantLoading extends RestaurantState{}
class RestaurantDone extends RestaurantState{
  final List<CategoryModel> categoryModel;

  RestaurantDone({required this.categoryModel});
}
class RestaurantError extends RestaurantState{
  final String error;

  RestaurantError({required this.error});
}