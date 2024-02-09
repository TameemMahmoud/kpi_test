import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import '../../../../main.dart';
import '../../../../utils/helper/hive_helper.dart';
import '../../../../utils/resources/app_assets.dart';
import '../../../../utils/resources/app_colors.dart';
import '../../../home_screen/presentation/view/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashTransition: SplashTransition.fadeTransition,
        splash: Image.asset(AppAssets.appLogo),
        duration: 3000,
        centered: true,
        splashIconSize: 210,
        nextScreen:  HomeScreen(),
      ),
    );
  }
}
