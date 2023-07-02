import 'package:e_commerce/core/utils/components.dart';
import 'package:e_commerce/features/login/presentation/pages/login_screen.dart';
import 'package:e_commerce/features/sign_up/presentation/pages/sign_up.dart';
import 'package:e_commerce/features/welcome/presentation/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String welcome = '/';
  static const String logIn = 'logIn';
  static const String signUp = 'signUp';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {

    switch (routeSettings.name) {
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        );
      case Routes.logIn:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case Routes.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoutes(),
        );
    }
  }
}
