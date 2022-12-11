import 'dart:async';
import 'package:amaze_todo/screens/login_screen.dart';
import 'package:get/get.dart';

class SpalshScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(LoginScreen.screenId);
    });
  }
}
