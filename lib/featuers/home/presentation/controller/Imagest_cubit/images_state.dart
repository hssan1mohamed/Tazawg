class ImagesState{}
class ImagesInitial extends ImagesState{}
class ImagesDone extends ImagesState{
  final List images;

  ImagesDone({required this.images});
}
class ImagesLoading extends ImagesState{}
class ImagesError extends ImagesState{
  final String error;

  ImagesError({required this.error});
}