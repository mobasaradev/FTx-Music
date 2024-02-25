import 'package:flutter/material.dart';
import 'package:ftx_music/modules/auth/auth_methods.dart';
import 'package:ftx_music/modules/onboard/onboard_page.dart';

import '../modules/splash/splash_page.dart';
import 'route_name.dart';

class AppRoutes {
  static Route<Widget>? onGenerateRoute(RouteSettings settings) {
    final generatedRoutes = <String, Widget>{
      RouteName.splash: const SplashPage(),
      RouteName.onboard: const OnboardPage(),
      RouteName.authMethod: const AuthMethodPage(),
    };

    final widget = generatedRoutes[settings.name];

    if (widget != null) return MaterialPageRoute(builder: (_) => widget);
    return null;
  }
}
