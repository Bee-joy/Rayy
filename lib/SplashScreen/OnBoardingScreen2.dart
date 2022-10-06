import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rayy/SplashScreen/OnboardingScreen3.dart';
import 'package:rayy/Style/Theme.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  final _formKey = GlobalKey<FormState>();
  late String contactNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Continue with phone",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: primaryColor),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 14, left: 20, right: 20),
              child: SizedBox(
                width: 320,
                height: 70,
                child: Text(
                  "Please enter your valid phone number. We will send you 4-digit code to verify account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff01C1939), fontSize: 13, height: 1.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 70,
                child: IntlPhoneField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff0E0E0E0)),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    contactNumber = phone.countryCode + " " + phone.number;
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    OnboardingScreen3(contactNumber)));
                      }
                    },
                    child: const Text('Send Code'),
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
