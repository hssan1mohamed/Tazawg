import 'package:tazawg/featuers/home/data/restaurant_model.dart';

class SweetsStates{}
class SweetInitial extends SweetsStates{}
class SweetLoading extends SweetsStates{}
class SweetDone extends SweetsStates{
  final List<CategoryModel> categoryModel;

  SweetDone({required this.categoryModel});
}
class SweetError extends SweetsStates{
  final String error;

  SweetError({required this.error}); 
}