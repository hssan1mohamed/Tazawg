import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/featuers/home/presentation/controller/Imagest_cubit/images_cubit.dart';
import 'package:tazawg/featuers/home/presentation/controller/Imagest_cubit/images_state.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  CarouselController buttonCarouselController = CarouselController();

  // final List<String> images = [
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmLn8089zr2heNAJOIUGKk0UOC8yAFKcq-k_WvL52vPZIKKPUruJSXO_yzdZDZEj4fToI&usqp=CAU',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiRh_gERsbkGxZCg11qNxCMkJbrobpig38uA&usqp=CAU'
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImagesCubit, ImagesState>(
      builder: (context, state) {
        if(state is ImagesDone ){

        return CarouselSlider(
          items: state.images
              .map((e) =>
              Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        e,
                        width: 1050,
                        height: 350,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ))
              .toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal),
        );}else if(state is ImagesError){
          return Center(child: Text(state.error));
        }else{
          return  const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
