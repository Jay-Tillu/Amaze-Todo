import 'package:amaze_todo/firebase_options.dart';
import 'package:amaze_todo/screens/login_screen.dart';
import 'package:amaze_todo/screens/main_screen.dart';
import 'package:amaze_todo/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
          page: (() => SplashScreen()),
        ),
        GetPage(
          name: LoginScreen.screenId,
          page: (() => const LoginScreen()),
        ),
        GetPage(
          name: MainScreen.screenID,
          page: (() => const MainScreen()),
        )
      ],
    );
  }
}
