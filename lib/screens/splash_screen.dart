import 'package:amaze_todo/controllers/splashscreen_controller.dart';
import 'package:amaze_todo/utilities/constants.dart';
import 'package:amaze_todo/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  static const screenID = '/SplashScreen';
  final controller = Get.put(SpalshScreenController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: SizeConfig.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                kLogoImage,
                width: SizeConfig.blockSizeHorizontal * 50,
                height: SizeConfig.blockSizeVerticle * 12,
              ),
              SizedBox(
                height: SizeConfig.blockSizeVerticle * 5,
              ),
              Text(
                'Amaze Todo',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.blockSizeHorizontal * 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
