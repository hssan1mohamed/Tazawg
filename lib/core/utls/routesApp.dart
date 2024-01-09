import 'package:go_router/go_router.dart';
import 'package:tazawg/featuers/auth/presentation/view/auth.dart';
import 'package:tazawg/featuers/auth/presentation/view/signIn.dart';
import 'package:tazawg/featuers/home/presentation/view/home.dart';
import 'package:tazawg/featuers/splash/views/splash_view.dart';

class RoutesApp {
  static const String kSplashView = '/SplashView';
  static const String kAuth = '/Auth';
  static const String kSignIn = '/SignIn';
  static const String kHome = '/Home';

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
        path: kSignIn,
        builder: (context, state) => const SignIn(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) => const Home(),
      )
    ],
  );
}
