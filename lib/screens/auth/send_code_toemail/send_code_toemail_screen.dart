import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:recipe_ui_chefio/screens/auth/login/login_screen.dart';

class SendCodetoEmailScreen extends StatefulWidget {
  final Widget directTo;
  const SendCodetoEmailScreen({Key? key, required this.directTo}) : super(key: key);

  @override
  _SendCodetoEmailScreenState createState() => _SendCodetoEmailScreenState();
}

class _SendCodetoEmailScreenState extends State<SendCodetoEmailScreen> {
  Widget OTPInput() {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: ConstTxtStyle.heading1(),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC2C2C2), width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: ConstColor.primary, width: 2),
      borderRadius: BorderRadius.circular(15),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Check your email",
                style: ConstTxtStyle.heading1(textColor: ConstColor.mainText),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "We've sent the code to your email",
                style: ConstTxtStyle.paragraph1(
                    textColor: ConstColor.secondaryText),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            OTPInput(),
            SizedBox(
              height: 35,
            ),
            RichText(
              textScaleFactor: 0.9,
              text: TextSpan(children: [
                TextSpan(
                  text: "code expires in: ",
                  style: ConstTxtStyle.paragraph1(),
                ),
                TextSpan(
                  text: "03:12",
                  style: ConstTxtStyle.paragraph1(
                    textColor: ConstColor.secondary,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => widget.directTo),
                          (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  textStyle: ConstTxtStyle.paragraph1(textColor: Colors.white),
                  primary: ConstColor.primary,
                  onPrimary: Colors.white,
                  minimumSize: Size(scrSize.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text("Verify"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (context) => LoginScreen()),
                  //         (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  textStyle: ConstTxtStyle.paragraph1(textColor: Colors.white),
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  side: BorderSide(color: ConstColor.secondaryText, width: 2),
                  shadowColor: Colors.transparent,
                  minimumSize: Size(scrSize.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  "Send Again",
                  style: ConstTxtStyle.heading2(
                      textColor: ConstColor.secondaryText),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
