import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rayy/Style/Theme.dart';

class OnboardingScreen3 extends StatefulWidget {
  String contactNumber;
  OnboardingScreen3(this.contactNumber, {Key? key}) : super(key: key);

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  FocusNode textFieldOne = FocusNode();

  FocusNode textFieldTwo = FocusNode();

  FocusNode textFieldThree = FocusNode();

  FocusNode textFieldFour = FocusNode();

  FocusNode verify = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Verify Phone Number",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: primaryColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
              child: SizedBox(
                  width: 320,
                  height: 70,
                  child: RichText(
                      text: TextSpan(
                    children: [
                      const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Enter 4-digit Code code we have sent to at",
                                    style: TextStyle(
                                        color: Color(0xff01C1939),
                                        fontSize: 13),
                                  ),
                                )),
                          )
                        ],
                      ),
                      TextSpan(
                        children: [
                          WidgetSpan(
                              child: Align(
                            alignment: Alignment.center,
                            child: Text(widget.contactNumber,
                                style: const TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff07165E3),
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1,
                                    decorationStyle:
                                        TextDecorationStyle.solid)),
                          )),
                        ],
                      ),
                    ],
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      onChanged: (_) {
                        textFieldTwo.requestFocus();
                      },
                      focusNode: textFieldOne,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: primaryColor),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      onChanged: (_) {
                        textFieldThree.requestFocus();
                      },
                      focusNode: textFieldTwo,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: primaryColor),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      autofocus: true,
                      onChanged: (_) {
                        textFieldFour.requestFocus();
                      },
                      focusNode: textFieldThree,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: primaryColor),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      onChanged: (_) {
                        verify.requestFocus();
                      },
                      autofocus: true,
                      focusNode: textFieldFour,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                        LengthLimitingTextInputFormatter(1)
                      ],
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                          color: primaryColor),
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Didn’t receive code?",
                  style: TextStyle(
                      color: Color(0xff01C1939), fontSize: 14, height: 1.5),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Resend Code",
                  style: TextStyle(
                      color: Color(0xff0312A91),
                      fontSize: 14,
                      height: 1.5,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                      decorationStyle: TextDecorationStyle.solid),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      focusNode: verify,
                      autofocus: true,
                      onPressed: () {},
                      child: const Text('Verify Code'),
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: SizedBox(
                  width: 320,
                  height: 70,
                  child: Align(
                    child: RichText(
                        text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "By clicking start, you agree to our ",
                          style: TextStyle(
                              color: Color(0xff01C1939),
                              fontSize: 13,
                              height: 1.5),
                        ),
                        TextSpan(
                            text: "Privacy Policy ",
                            style: TextStyle(
                                color: Color(0xff07165E3),
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1,
                                decorationStyle: TextDecorationStyle.solid)),
                        TextSpan(
                            text: "and ",
                            style: TextStyle(
                                color: Color(0xff01C1939),
                                fontSize: 13,
                                height: 1.5)),
                        TextSpan(
                          children: [
                            WidgetSpan(
                                child: Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Teams and Conditions",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff07165E3),
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 1,
                                        decorationStyle:
                                            TextDecorationStyle.solid)),
                              ),
                            )),
                          ],
                        ),
                      ],
                    )),
                  )

                  // Text(
                  //   "By clicking start, you agree to our Privacy Policy and Teams and Conditions",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //       color: Color(0xff01C1939), fontSize: 13, height: 1.5),
                  // ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
