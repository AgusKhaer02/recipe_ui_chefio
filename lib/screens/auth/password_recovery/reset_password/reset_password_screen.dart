import 'package:flutter/material.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:recipe_ui_chefio/screens/auth/login/login_screen.dart';
import 'package:recipe_ui_chefio/screens/auth/password_recovery/reset_password/widgets/password_check.dart';
import 'package:unicons/unicons.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController passwordController = TextEditingController();

  bool isInvisible = true;
  bool isCompletedPasswordCriteria = false;
  bool sixChar = false;
  bool containsNum = false;

  Widget check6Char() {
    if (passwordController.text.length >= 6) {
      sixChar = true;

      return const PasswordCheck(
        isActive: true,
        checkLabel: 'Atleast 6 characters',
      );
    }
    sixChar = false;
    return const PasswordCheck(
      isActive: false,
      checkLabel: 'Atleast 6 characters',
    );
  }

  Widget checkContainsNum() {
    if (passwordController.text.contains(RegExp(r'[0-9]'))) {
      containsNum = true;
      return const PasswordCheck(
        isActive: true,
        checkLabel: 'Contains a number',
      );
    }
    containsNum = false;
    return const PasswordCheck(
      isActive: false,
      checkLabel: 'Contains a number',
    );
  }

  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          width: scrSize.width,
          height: scrSize.height,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Reset your password",
                  style: ConstTxtStyle.heading1(textColor: ConstColor.mainText),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Please enter your new password",
                  style: ConstTxtStyle.paragraph1(
                      textColor: ConstColor.secondaryText),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //password
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorHeight: 20,
                  autofocus: true,
                  obscureText: isInvisible,
                  controller: passwordController,
                  style: ConstTxtStyle.paragraph1(),
                  onChanged: (value) {
                    if (sixChar == true && containsNum == true) {
                      setState(() {
                        isCompletedPasswordCriteria = true;
                      });
                    }
                    setState(() {});
                  },
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintStyle: ConstTxtStyle.paragraph1(
                      textColor: ConstColor.secondaryText,
                    ),
                    hintText: "Password",
                    prefixIcon: Icon(
                      UniconsLine.lock,
                      color: ConstColor.mainText,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        (isInvisible) ? UniconsLine.eye : UniconsLine.eye_slash,
                        color: ConstColor.mainText,
                      ),
                      onPressed: () {
                        setState(() {
                          isInvisible = !isInvisible;
                        });
                      },
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
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
                height: 15,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Text(
                    "Your Password must contain:",
                    style: ConstTxtStyle.paragraph1(),
                  ),
                ),
              ),

              check6Char(),
              checkContainsNum(),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: (isCompletedPasswordCriteria)
                      ? () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                              (route) => false);
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    textStyle:
                        ConstTxtStyle.paragraph1(textColor: Colors.white),
                    primary: ConstColor.primary,
                    onPrimary: Colors.white,
                    minimumSize: Size(scrSize.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    "Done",
                    style: ConstTxtStyle.paragraph1(textColor: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
