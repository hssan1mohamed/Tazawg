import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:tazawg/core/utls/api_servces.dart';
import 'package:tazawg/featuers/home/presentation/controller/Imagest_cubit/images_state.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImagesCubit() : super(ImagesInitial());

  Future getImages() async {
    print('starttttt');
    emit(ImagesLoading());
    try {
      List<String> Images = [];
      var result = await ApiService().get(endPoint: 'images');
      for (var element in result.docs) {
        Images.add(element.data()['img']);
      }
      print(Images);
      emit(ImagesDone(images: Images));
    } catch (error) {
      print(error);
      emit(ImagesError(error: error.toString()));
    }
  }
}
