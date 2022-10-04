import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rayy/Style/Theme.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SafeArea(
            child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff0D9D9D9),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 1,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Get Started with Rayy Tech",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff0312A91)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta ipsumLorem ipsum dolor/",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff0312A91)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingScreen1()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.png"),
                      const SizedBox(width: 8),
                      const Text(
                        'Sign Up with Google',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff0666666)),
                          ),
                          InkWell(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Lato',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff0312A91)),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
