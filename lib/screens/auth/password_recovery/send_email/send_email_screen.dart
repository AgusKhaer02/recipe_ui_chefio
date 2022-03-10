import 'package:flutter/material.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:recipe_ui_chefio/screens/auth/password_recovery/reset_password/reset_password_screen.dart';
import 'package:recipe_ui_chefio/screens/auth/send_code_toemail/send_code_toemail_screen.dart';
import 'package:unicons/unicons.dart';

class SendEmailScreen extends StatefulWidget {
  const SendEmailScreen({Key? key}) : super(key: key);

  @override
  State<SendEmailScreen> createState() => _SendEmailScreenState();
}

class _SendEmailScreenState extends State<SendEmailScreen> {
  TextEditingController emailController = TextEditingController();

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
                "Password Recovery",
                style: ConstTxtStyle.heading1(textColor: ConstColor.mainText),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Enter your email to recover your password",
                style: ConstTxtStyle.paragraph1(
                    textColor: ConstColor.secondaryText),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //email
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                cursorHeight: 20,
                autofocus: true,
                controller: emailController,
                style: ConstTxtStyle.paragraph1(),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintStyle: ConstTxtStyle.paragraph1(
                    textColor: ConstColor.secondaryText,
                  ),
                  hintText: "Email or phone number",
                  prefixIcon: Icon(
                    UniconsLine.envelope,
                    color: ConstColor.mainText,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: ConstColor.secondaryText,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: ConstColor.secondaryText,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: ConstColor.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SendCodetoEmailScreen(
                        directTo: ResetPasswordScreen(),
                      ),
                    ),
                  );
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
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
