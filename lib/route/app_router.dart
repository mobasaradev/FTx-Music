import 'package:flutter/material.dart';
import 'package:ftx_music/modules/auth/auth_methods.dart';
import 'package:ftx_music/modules/auth/forget_pass/forget_pass_page.dart';
import 'package:ftx_music/modules/auth/forget_pass/reset_pass_page.dart';
import 'package:ftx_music/modules/auth/forget_pass/reset_success_page.dart';
import 'package:ftx_music/modules/auth/forget_pass/sent_link_page.dart';
import 'package:ftx_music/modules/auth/log_in/log_in_page.dart';
import 'package:ftx_music/modules/auth/register/register_page.dart';
import 'package:ftx_music/modules/onboard/onboard_page.dart';

import '../modules/splash/splash_page.dart';
import 'route_name.dart';

class AppRoutes {
  static Route<Widget>? onGenerateRoute(RouteSettings settings) {
    final generatedRoutes = <String, Widget>{
      RouteName.splash: const SplashPage(),
      RouteName.onboard: const OnboardPage(),
      RouteName.authMethod: const AuthMethodPage(),
      RouteName.register: const RegisterPage(),
      RouteName.login: const LoginPage(),
      RouteName.forgetPass: const ForgotPassPage(),
      RouteName.linkChecked: const LinkSendPage(),
      RouteName.resetPass: const ResetPasswordPage(),
      RouteName.resetPassSuccess: const ResetPassSuccessPage(),
    };

    final widget = generatedRoutes[settings.name];

    if (widget != null) return MaterialPageRoute(builder: (_) => widget);
    return null;
  }
}
