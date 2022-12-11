import 'package:amaze_todo/screens/login_screen.dart';
import 'package:amaze_todo/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.screenID,
      getPages: [
        GetPage(
          name: SplashScreen.screenID,
          page: (() => const SplashScreen()),
        ),
        GetPage(
          name: LoginScreen.screenId,
          page: (() => const LoginScreen()),
        )
      ],
    );
  }
}
