import 'package:go_router/go_router.dart';
import 'package:tazawg/features/auth/presentation/view/auth.dart';
import 'package:tazawg/features/home/data/model/category_model.dart';
import 'package:tazawg/features/home/presentation/view/category_details.dart';
import 'package:tazawg/features/home/presentation/view/home.dart';
import 'package:tazawg/features/search/presentation/view/search.dart';
import 'package:tazawg/features/splash/views/splash_view.dart';

class RoutesApp {
  static const String kSplashView = '/SplashView';
  static const String kAuth = '/Auth';
  static const String kHome = '/Home';
  static const String kcategorydetails = '/categorydetails';
  static const String kSearch = '/Search';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
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
        path: kcategorydetails,
        builder: (context, state) => CategoryDetails(
          categoryModel: state.extra as CategoryModel,
        ),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const Search(),
      )
    ],
  );
}
