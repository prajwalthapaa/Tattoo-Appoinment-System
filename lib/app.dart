import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/apptheme/app_theme.dart';
import 'package:flutter_application_1/view/onboardscreen.dart';

import 'view/dashboardscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/login",
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        routes: {
          "/": (context) => const OnboardScreen(),
          "/login": (context) => const LoginScreen(),
          "/register": (context) => const RegisterScreen(),
          "/dashboard": (context) => const DashboardScreen(),
        });
  }
}
