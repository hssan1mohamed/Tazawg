import 'package:go_router/go_router.dart';
import 'package:tazawg/featuers/splash/views/splash_view.dart';
import 'package:tazawg/main.dart';

class RoutesApp {
  static const String kHome = '/Home';
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const Home(),
      )
    ],
  );
}
