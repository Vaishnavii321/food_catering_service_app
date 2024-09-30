import 'dart:async';

import 'package:craft_my_plate/onboarding_screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const OnboardingScreens()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(99, 24, 175, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Logo.png', height: 250),
            Text(
              'Craft My Plate',
              style: GoogleFonts.capriola(
                textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(247, 229, 183, 1),
                ),
              )
            ),
            const SizedBox(height: 10),
            Text(
              'You customise, We cater',
              style: GoogleFonts.courgette(
                textStyle: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(213, 182, 125, 1),
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}