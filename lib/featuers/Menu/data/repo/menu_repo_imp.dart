import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:tazawg/core/utls/error.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';
import 'package:tazawg/featuers/Menu/data/repo/menu_repo.dart';

class MenuRepoImp implements MenuRepo {
  @override
  Future<Either<CustomErrorMessage, List<MenuModel>>> fetchMenu() async {
    try {
      List<MenuModel> menu = [];
       FirebaseFirestore.instance.collection('menu').snapshots().listen((event) {
        for (var doc in event.docs) {
          menu.add(MenuModel.fromJson(doc));
        }
      });
      return right(menu);
    } catch (error) {
      return left(CustomErrorMessage(errorMessage: error.toString()));
    }
  }
}
