import 'package:flutter/material.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:recipe_ui_chefio/screens/auth/login/login_screen.dart';
import 'package:recipe_ui_chefio/screens/get_started/widgets/onboarding.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ConstColor.whiteFlurocent,
      body: SafeArea(
        child: Column(
          children: [
            Onboarding(),
            SizedBox(
              height: 50,
            ),
            Text(
              "Start Cooking",
              style: ConstTxtStyle.heading1(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 85),
              child: Text(
                "Let's join out community to cook better food!",
                textAlign: TextAlign.center,
                style: ConstTxtStyle.paragraph1(
                    textColor: ConstColor.secondaryText),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 15,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
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
                child: Text(
                    "Get Started"
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
