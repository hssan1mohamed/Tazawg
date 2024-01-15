part of 'cafes_cubit.dart';

@immutable
sealed class CafesState {}

final class CafesInitial extends CafesState {}

final class CafesLoading extends CafesState {}

final class CafesSucess extends CafesState {
  final List<CategoryModel> cafesList;

  CafesSucess({required this.cafesList});
}
