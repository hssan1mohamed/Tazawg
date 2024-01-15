import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/data/repo/home_repo.dart';

class FoodHomeRepoImp implements FoodHomeRepo {
  @override
  Future<List<CategoryModel>> fetchRestaurant() async {
    List<CategoryModel> categorylist = [];
    CollectionReference dec =
        await FirebaseFirestore.instance.collection("Restaurants");
    dec.snapshots().listen((event) {
      for (var doc in event.docs) {
        categorylist.add(CategoryModel.frfirebase(doc));
      }
    });
    return categorylist;
  }

  @override
  Future<List<CategoryModel>> fetchCafes() async {
    List<CategoryModel> categorylist = [];
    CollectionReference dec =
        await FirebaseFirestore.instance.collection("cafes");
    dec.snapshots().listen((event) {
      for (var doc in event.docs) {
        categorylist.add(CategoryModel.frfirebase(doc));
      }
    });
    return categorylist;
  }

  @override
  Future<List<CategoryModel>> fetchSweetshop() async {
    List<CategoryModel> categorylist = [];
    CollectionReference dec =
        await FirebaseFirestore.instance.collection("sweets shope");
    dec.snapshots().listen((event) {
      for (var doc in event.docs) {
        categorylist.add(CategoryModel.frfirebase(doc));
      }
    });
    return categorylist;
  }
}
