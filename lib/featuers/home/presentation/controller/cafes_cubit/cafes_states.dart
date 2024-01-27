import 'package:tazawg/featuers/home/data/restaurant_model.dart';

class CafesStates{}
class CafesIntial extends CafesStates{}
class CafesLoading extends CafesStates{}
class CafesDone extends CafesStates{

  final List<CategoryModel> categoryModel;

  CafesDone({required this.categoryModel});
}
class CafesError extends CafesStates{
  final String error;

  CafesError({required this.error});
}
