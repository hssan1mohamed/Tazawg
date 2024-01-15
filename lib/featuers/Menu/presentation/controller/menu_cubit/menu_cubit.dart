import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitialState());

  Future<void> getMenu() async {
    emit(MenuLoadingState());
    try {
      List<MenuModel> menu = [];
      FirebaseFirestore.instance.collection('menu').snapshots().listen((event) {
        for (var doc in event.docs) {
          menu.add(MenuModel.fromJson(doc));
        }
        emit(MenuDoneState(menu: menu));
        print(menu[0].name);
      });
    } catch (error) {
      print(error);
      emit(MenuErrorState(error: error.toString()));
    }
  }
}
