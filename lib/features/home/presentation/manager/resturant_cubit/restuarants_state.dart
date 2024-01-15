part of 'restuarants_cubit.dart';

@immutable
sealed class RestuarantsState {}

final class RestuarantsInitial extends RestuarantsState {}

final class RestuarantsLoading extends RestuarantsState {}

final class RestuarantsSucess extends RestuarantsState {
  final List<CategoryModel> restuarantsList;

  RestuarantsSucess({required this.restuarantsList});
}
