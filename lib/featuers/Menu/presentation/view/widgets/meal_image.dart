import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';

class MealImage extends StatelessWidget {
  const MealImage({
    super.key,
    required this.menuModel,
  });
  final MenuModel menuModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Constant.kprimaryColor,
          // image: DecorationImage(
          //     image: NetworkImage(menuModel.image), fit: BoxFit.cover)),
      ), child: CachedNetworkImage(
      imageUrl: menuModel.image,
      fit: BoxFit.fill,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    ),
    );
  }
}
