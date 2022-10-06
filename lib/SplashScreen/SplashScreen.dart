import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rayy/SplashScreen/OnboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff0312a91),
        systemNavigationBarColor: Color(0xff0312a91),
        statusBarIconBrightness: Brightness.light));
    super.initState();
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0312a91),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/rayy.png",
                  height: 100,
                  width: 150,
                ))
          ],
        ),
      ),
    );
  }
}
