import 'package:chaty/src/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  Routes._privateConstructor();
  static Routes instance = Routes._privateConstructor();

  String initialRoute = "";

  Route<dynamic>? availableRoutes(
      RouteSettings settings, BuildContext context) {
    switch (settings.name) {
      case SplashScreen.id:
        return CupertinoPageRoute(
          builder: (context) => const SplashScreen(),
        );

      default:
        return CupertinoPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
