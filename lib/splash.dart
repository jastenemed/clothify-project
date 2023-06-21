import 'package:clothify/login.dart';

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/clothifylogo.png',
      nextScreen:  const LoginScreen(),
      splashTransition: SplashTransition.scaleTransition, splashIconSize: double.infinity, 
    );
  }
}
