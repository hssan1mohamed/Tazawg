import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tazawg/featuers/Menu/data/repo/menu_repo.dart';
import 'package:tazawg/featuers/Menu/data/repo/menu_repo_imp.dart';
import 'package:tazawg/featuers/Menu/presentation/controller/menu_cubit/menu_cubit.dart';
import 'package:tazawg/featuers/Menu/presentation/view/menu_view.dart';
import 'package:tazawg/featuers/home/presentation/view/details_restaurant.dart';
import 'package:tazawg/featuers/home/presentation/view/home.dart';
import 'package:tazawg/featuers/search/presentation/view/search.dart';
import 'package:tazawg/featuers/splash/views/splash_view.dart';

class RoutesApp {
  static const String kSplashView = '/';
  static const String kAuth = '/Auth';
  static const String kHome = '/home';
  static const String kDetailesRestaurant = '/DetailesRestaurant';
  static const String kSearch = '/Search';
  static const String kMenu = '/Menu';
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: kDetailesRestaurant,
        builder: (context, state) => const DetailesRestaurant(),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const Search(),
      ),
      GoRoute(
        path: kMenu,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => MenuCubit(MenuRepoImp())..getMenu(),
              child: const MenuView(),
            ),
      ),
    ],
  );
}
