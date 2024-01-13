import 'package:flutter/material.dart';

class DetailesBody extends StatelessWidget {
  const DetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
          image: DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVpnU97ENm-1xMA2kzAQQWm-uIfgNNmo0OLA&usqp=CAU')),
          color: Colors.white),
    );
  }
}
