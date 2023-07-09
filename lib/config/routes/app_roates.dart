import 'package:e_commerce/core/utils/components.dart';
import 'package:e_commerce/features/home/presentation/pages/home.dart';
import 'package:e_commerce/features/introduction_animation/presentation/pages/introduction_animation_screen.dart';
import 'package:e_commerce/features/login/presentation/pages/login_screen.dart';
import 'package:e_commerce/features/sign_up/presentation/pages/sign_up.dart';
import 'package:e_commerce/features/welcome/presentation/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String introductionAnimationScreen = '/';
  static const String welcome = 'welcome';
  static const String logIn = 'logIn';
  static const String signUp = 'signUp';
  static const String homeScreen = 'home';
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.introductionAnimationScreen:
        return MaterialPageRoute(
          builder: (context) => const IntroductionAnimationScreen(),
        );
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        );
      case Routes.logIn:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case Routes.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoutes(),
        );
    }
  }
}
