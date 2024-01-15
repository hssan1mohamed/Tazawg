part of 'images_cubit.dart';

@immutable
abstract class ImagesState {}

class ImagesInitial extends ImagesState {}

class ImagesLoading extends ImagesState {}

class ImagesDone extends ImagesState {
  final List images;

  ImagesDone({required this.images});
}

class ImagesError extends ImagesState {
  final String error;

  ImagesError({required this.error});
}
