import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';
import 'package:tazawg/featuers/Menu/data/repo/menu_repo.dart';
import 'package:tazawg/featuers/Menu/data/repo/menu_repo_imp.dart';
part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit(this.menuRepoImp ) : super(MenuInitialState());


  final MenuRepoImp menuRepoImp;
  Future<void> getMenu() async {
    emit(MenuLoadingState());
    var result = await menuRepoImp.fetchMenu();
     result.fold((failure) {
      emit(MenuErrorState(error: failure.errorMessage));
    }, (menu) {
      emit(MenuDoneState(menu: menu));
      print(menu);
    });
  }
  // Future<void> getMenu() async {
  //   emit(MenuLoadingState());
  //   try {
  //
  //     List<MenuModel> menu = [];
  //     FirebaseFirestore.instance.collection('menu').snapshots().listen((event) {
  //       for (var doc in event.docs) {
  //         menu.add(MenuModel.fromJson(doc));
  //       }
  //       emit(MenuDoneState(menu: menu));
  //       print(menu[0].name);
  //     });
  //   } catch (error) {
  //     print(error);
  //     emit(MenuErrorState(error: error.toString()));
  //   }
  // }
}
