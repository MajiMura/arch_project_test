import 'package:arch_project_test/ui/routing/app_routes.dart';
import 'package:arch_project_test/ui/home/widgets/home_page.dart';
import 'package:arch_project_test/ui/welcome/widgets/welcome_page.dart';
import 'package:flutter/material.dart';

class GeneratedRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const HomePage());
      case AppRoutes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
