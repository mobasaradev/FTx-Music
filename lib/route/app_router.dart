import 'package:flutter/material.dart';
import 'package:ftx_music/modules/auth/register/create_password_page.dart';

import '../modules/auth/auth.dart';
import '../modules/splash/splash_page.dart';
import 'route_name.dart';

class AppRoutes {
  static Route<Widget>? onGenerateRoute(RouteSettings settings) {
    final generatedRoutes = <String, Widget>{
      RouteName.splash: const SplashPage(),
      RouteName.authMethod: const AuthMethodPage(),
      RouteName.emailPage: const EnterEmailPage(),
      RouteName.passwordPage: const CreatePasswordPage(),
      // RouteName.login: const LoginPage(),
      // RouteName.forgetPass: const ForgotPassPage(),
      // RouteName.linkChecked: const LinkSendPage(),
      // RouteName.resetPass: const ResetPasswordPage(),
      // RouteName.resetPassSuccess: const ResetPassSuccessPage(),
    };

    final widget = generatedRoutes[settings.name];

    if (widget != null) return MaterialPageRoute(builder: (_) => widget);
    return null;
  }
}
