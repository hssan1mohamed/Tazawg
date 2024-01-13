import 'package:flutter/material.dart';

class FoodCart extends StatelessWidget {
  const FoodCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.35 ,
          height: MediaQuery.of(context).size.height*0.15,
          decoration:  const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
          image: DecorationImage(image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiRh_gERsbkGxZCg11qNxCMkJbrobpig38uA&usqp=CAU'
              ,
          ),fit: BoxFit.fill)
          ),
        ),
      ],
    );
  }
}
