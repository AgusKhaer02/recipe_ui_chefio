import 'package:flutter/material.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:recipe_ui_chefio/screens/auth/password_recovery/send_email/send_email_screen.dart';
import 'package:recipe_ui_chefio/screens/auth/signup/sign_up_screen.dart';
import 'package:recipe_ui_chefio/screens/main_screen/main_screen.dart';
import 'package:unicons/unicons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isInvisible = true;

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
                  "Welcome Back!",
                  style: ConstTxtStyle.heading1(textColor: ConstColor.mainText),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Please enter your account here",
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
              //password
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorHeight: 20,
                  autofocus: true,
                  obscureText: isInvisible,
                  controller: passwordController,
                  style: ConstTxtStyle.paragraph1(),
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintStyle: ConstTxtStyle.paragraph1(
                        textColor: ConstColor.secondaryText),
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
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SendEmailScreen()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: ConstTxtStyle.paragraph1(),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: SizedBox(),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => MainScreen()),
                        (route) => false);
                  },
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
                  child: Text("Login"),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Text(
                "Or continue with",
                style: ConstTxtStyle.paragraph1(
                  textColor: ConstColor.secondaryText,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => MainScreen()),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle:
                        ConstTxtStyle.paragraph1(textColor: Colors.white),
                    primary: ConstColor.secondary,
                    onPrimary: Colors.white,
                    minimumSize: Size(scrSize.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        UniconsLine.google,
                        size: 16,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Google",
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),

              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                child: RichText(
                  textScaleFactor: 0.8,
                  text: TextSpan(
                    style: ConstTxtStyle.paragraph1(),
                    children: [
                      TextSpan(
                        text: "Don't have any account? ",
                      ),
                      TextSpan(
                        text: "Sign Up ",
                        style: TextStyle(color: ConstColor.primary),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
