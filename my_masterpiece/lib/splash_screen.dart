import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: WelcomePage(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/images/logo.png",
     
      backgroundColor: Colors.white,
    );
  }
}