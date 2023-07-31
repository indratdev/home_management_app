import 'package:flutter/material.dart';
import 'package:homemanagementapp/module/views/login_screen/login_screen.dart';

import '../../module/views/export.dart';

class Routes {
  static const String splash = '/splash';
  static const String cover = '/cover';
  static const String login = '/login';

  Map<String, WidgetBuilder> getRoutes = {
    splash: (_) => const SplashScreen(),
    cover: (_) => const CoverScreen(),
    login: (_) => const LoginScreen(),
  };
}
