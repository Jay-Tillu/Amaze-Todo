import 'package:amaze_todo/utilities/constants.dart';
import 'package:amaze_todo/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const screenId = '/loginScreen';

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
                kPhoneAuthImage,
                width: SizeConfig.blockSizeHorizontal * 60,
              ),
              SizedBox(
                height: SizeConfig.blockSizeVerticle * 3,
              ),
              Text(
                'Amaze Todo',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.blockSizeHorizontal * 6,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVerticle * 8,
              ),
              FloatingActionButton.extended(
                onPressed: () async {
                  GoogleSignIn().signIn();
                },
                extendedPadding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal * 9,
                ),
                icon: Image.asset(
                  kGoogleLogoImage,
                  height: SizeConfig.blockSizeVerticle * 4,
                  width: SizeConfig.blockSizeHorizontal * 10,
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                label: Text(
                  'Sign in with Google',
                  style: GoogleFonts.roboto(
                    letterSpacing: SizeConfig.blockSizeHorizontal * 0.1,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVerticle * 12,
              ),
              Text(
                'Sign in with Google to start using your app.\nWe do not collect your personal information.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.blockSizeHorizontal * 3,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
