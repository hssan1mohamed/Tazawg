import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/featuers/home/presentation/controller/Imagest_cubit/images_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const TazawgApp());
}

class TazawgApp extends StatelessWidget {
  const TazawgApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => ImagesCubit()..getImages(),
        lazy: false,
        child: MaterialApp.router(
          routerConfig: RoutesApp.routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Constant.kbackgroundcolor,
          ),
        ),
      ),
    );
  }
}
