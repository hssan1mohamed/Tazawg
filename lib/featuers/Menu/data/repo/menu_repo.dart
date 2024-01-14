import 'package:tazawg/core/utls/error.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';
import 'package:dartz/dartz.dart';

abstract class MenuRepo{
  Future<Either<CustomErrorMessage, List<MenuModel>>> fetchMenu();
}