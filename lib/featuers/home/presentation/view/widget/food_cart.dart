import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tazawg/featuers/Menu/data/model.dart';

class FoodCart extends StatelessWidget {
  const FoodCart({super.key, required this.menuModel});
  final MenuModel menuModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.15,
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child:CachedNetworkImage(
              imageUrl: menuModel.image,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) {
                return const Center(child: Icon(Icons.error));
              },
            ),
          )),
    );
    //
    //   Column(
    //   children: [
    //     Container(
    //       width: MediaQuery.of(context).size.width * 0.35,
    //       height: MediaQuery.of(context).size.height * 0.15,
    //       decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.all(
    //             Radius.circular(10),
    //           ),
    //           image: DecorationImage(
    //               image: NetworkImage(
    //                 menuModel.image,
    //               ),
    //               fit: BoxFit.fill)),
    //     ),
    //   ],
    // );
  }
}
