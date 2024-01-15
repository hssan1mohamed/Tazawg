part of 'sweets_shope..dart';

@immutable
sealed class SweetsShopeCubitState {}

final class SweetsShopeCubitInitial extends SweetsShopeCubitState {}

final class SweetsShopeCubitLoading extends SweetsShopeCubitState {}

final class SweetsShopeCubitSucess extends SweetsShopeCubitState {
  final List<CategoryModel> sweets_shopeList;

  SweetsShopeCubitSucess({required this.sweets_shopeList});
}
