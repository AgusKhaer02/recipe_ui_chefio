import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: const [
          //image3
          Positioned(
            top: 40,
            right: 50,
            child: SizedBox(
              width: 104,
              height: 104,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/image 3.png"),
                ),
              ),
            ),
          ),
          //image4
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 160,
              height: 160,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/image 4.png"),
                ),
              ),
            ),
          ),
          //image1
          Positioned(
            top: 70,
            left: 45,
            child: SizedBox(
              width: 88,
              height: 88,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 33,
                  backgroundImage: AssetImage("assets/images/image 1.png"),
                ),
              ),
            ),
          ),
          //eclipse6
          Positioned(
            bottom: 0,
            top: 120,
            right: 20,
            child: SizedBox(
              width: 56,
              height: 56,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/Ellipse 6.png"),
                ),
              ),
            ),
          ),
          //eclipse7
          Positioned(
            bottom: 100,
            top: 0,
            right: -20,
            child: SizedBox(
              width: 72,
              height: 72,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/Ellipse 7.png"),
                ),
              ),
            ),
          ),
          //eclipse3
          Positioned(
            bottom: 80,
            left: 50,
            child: SizedBox(
              width: 72,
              height: 72,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/Ellipse 3.png"),
                ),
              ),
            ),
          ),
          //eclipse2
          Positioned(
            bottom: 0,
            top: 0,
            left: -30,
            child: SizedBox(
              width: 104,
              height: 104,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/Ellipse 2.png"),
                ),
              ),
            ),
          ),
          //rectangle100
          Positioned(
            bottom: 50,
            right: 90,
            child: SizedBox(
              width: 88,
              height: 88,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage:
                      AssetImage("assets/images/Rectangle 188.png"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
