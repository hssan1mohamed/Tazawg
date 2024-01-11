import 'package:go_router/go_router.dart';
import 'package:tazawg/featuers/auth/presentation/view/auth.dart';
import 'package:tazawg/featuers/home/presentation/view/category_details.dart';
import 'package:tazawg/featuers/home/presentation/view/home.dart';
import 'package:tazawg/featuers/search/presentation/view/search.dart';
import 'package:tazawg/featuers/splash/views/splash_view.dart';

class RoutesApp {
  static const String kSplashView = '/SplashView';
  static const String kAuth = '/Auth';
  static const String kHome = '/Home';
  static const String kcategorydetails = '/categorydetails';
  static const String kSearch = '/Search';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kAuth,
        builder: (context, state) => const Auth(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) => const CategoryDetails(),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const Search(),
      )
    ],
  );
}
