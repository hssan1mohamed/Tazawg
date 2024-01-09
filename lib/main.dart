import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tazawg/consts.dart';
import 'package:tazawg/core/utls/routesApp.dart';
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
    return MaterialApp.router(
      routerConfig: RoutesApp.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.kprimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 50,
        width: 50,
      ),
    );
  }
}
