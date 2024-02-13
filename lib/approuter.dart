import 'package:flutter/material.dart';
import 'package:fruits/constants/resources/strings.dart';
import 'package:fruits/presintation/screens/fruits.dart';
import 'package:fruits/presintation/screens/home_screen.dart';
import 'package:fruits/presintation/screens/mainview.dart';
import 'package:fruits/presintation/screens/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case fruit:
        return MaterialPageRoute(builder: (_) => const FruitsScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case mainView:
        return MaterialPageRoute(builder: (_) => const MainView());
    }
    return null;
  }
}
