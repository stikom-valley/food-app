import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/pages.dart';

import '../ui/pages/on_bording/on_bording_screen.dart';

abstract class AppRoutes {
  static const String examplePage = "example_page";
  static const String mainPage = "main_page";
  static const String onBording = "onbording";
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case AppRoutes.examplePage:
        final argsExample = args as String;
        screen = ExamplePage(argsExample: argsExample);
        break;
      case AppRoutes.mainPage:
        screen = const MainPage();
        break;
      case AppRoutes.onBording:
        screen = const OnBordingScreen(
          onBording: AppRoutes.onBording,
        );
        break;
      default:
        screen = const OnBordingScreen(
          onBording: AppRoutes.onBording,
        );
        break;
    }
    return MaterialPageRoute(builder: (_) => screen);
  }
}
