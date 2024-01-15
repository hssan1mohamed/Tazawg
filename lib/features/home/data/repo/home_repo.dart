import 'package:tazawg/features/home/data/model/category_model.dart';

abstract class FoodHomeRepo {
  Future<List<CategoryModel>> fetchRestaurant();
  Future<List<CategoryModel>> fetchCafes();
  Future<List<CategoryModel>> fetchSweetshop();
}
