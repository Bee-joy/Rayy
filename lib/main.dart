import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rayy/SplashScreen/OnboardingScreen.dart';
import 'package:rayy/SplashScreen/SplashScreen.dart';
import 'package:rayy/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> initDynamicLinks() async {
    FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;
    dynamicLinks.onLink.listen((dynamicLinkData) {
      Get.toNamed(dynamicLinkData.link.queryParameters.values.first);
    }).onError((error) {
      print('onLink error');
      print(error.message);
    });
  }

  @override
  void initState() {
    initDynamicLinks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        '/onboarding': (BuildContext context) => const OnboardingScreen()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
