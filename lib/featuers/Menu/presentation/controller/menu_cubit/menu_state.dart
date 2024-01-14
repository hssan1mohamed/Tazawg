part of 'menu_cubit.dart';

@immutable
abstract class MenuState {}

class MenuInitialState extends MenuState {}

class MenuLoadingState extends MenuState {}

class MenuDoneState extends MenuState {
  final List<MenuModel> menu;

  MenuDoneState({required this.menu});
}

class MenuErrorState extends MenuState {
  final String error;

  MenuErrorState({required this.error});
}
