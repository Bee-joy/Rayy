import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rayy/SplashScreen/GoogleSignIn/GoogleSignInBloc.dart';
import 'package:rayy/SplashScreen/OnBoardingScreen2.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  GoogleSignInBloc bloc = GoogleSignInBloc();
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SafeArea(
            child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  bloc.googleLogOut();
                },
                child: const Text('Logout'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
              ),
              const Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL.toString()),
                radius: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text("Email :"), Text(user.email!)]),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text("Name :"), Text(user.displayName!)]),
              const SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text("Userid :"), Text(user.uid)]),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnboardingScreen2()));
                },
                child: const Text('Next'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
