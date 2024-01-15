import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/routesApp.dart';
import 'package:tazawg/features/home/data/repo/home_repo_imp.dart';
import 'package:tazawg/features/home/presentation/manager/cafe_cubit/cafes_cubit.dart';
import 'package:tazawg/features/home/presentation/manager/resturant_cubit/restuarants_cubit.dart';
import 'package:tazawg/features/home/presentation/manager/sweet_shope_cubit/sweets_shope..dart';
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
        child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CafesCubit(FoodHomeRepoImp())..fetchCafes(),
        ),
        BlocProvider(
          create: (context) =>
              RestuarantsCubit(FoodHomeRepoImp())..fetchRestuarants(),
        ),
        BlocProvider(
          create: (context) =>
              SweetsShopeCubitCubit(FoodHomeRepoImp())..fetchSweets_shpoe(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RoutesApp.routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Constant.kbackgroundcolor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          //textTheme: Typography().white.apply(fontFamily: 'Mukta'),
        ),
      ),
    ));
  }
}
