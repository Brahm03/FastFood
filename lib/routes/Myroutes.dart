import 'package:fastfood/screens/Registiration_Page.dart';
import 'package:fastfood/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

class Myroutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case '/register':
      return MaterialPageRoute(builder: (context) => const Registiration_Page());
    }
  }
}
