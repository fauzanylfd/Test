import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gopet/common/utils/custom_colors.dart';
import 'package:gopet/screen/loginPage.dart';

import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Make status bar and navigation bar transparent
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
          (route) => false);
    });

    return Scaffold(
      body: Stack(children: [
        // Make the image adjust itself to the screen size
        Positioned.fill(
          child: Image.asset(
            'assets/images/awal.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Helping you \n to keep ",
                      style: GoogleFonts.manrope(
                          fontSize: 24,
                          color: Coloors.second,
                          letterSpacing: 3.5 / 10,
                          height: 152 / 100),
                      children: const [
                        TextSpan(
                            text: "your bestie",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                        TextSpan(text: "\nstay healthy!")
                      ]))
            ],
          )),
        )
      ]),
    );
  }
}
