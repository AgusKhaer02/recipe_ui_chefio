import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/screens/main_screen/subscreen/home/home_screen.dart';
import 'package:recipe_ui_chefio/screens/main_screen/subscreen/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  void onTapChangedMenu(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> listSubScreen = [
    HomeScreen(),
    Center(
      child: Text("Upload"),
    ),
    Center(),
    Center(
      child: Text("Notification"),
    ),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: listSubScreen[selectedIndex]),
        floatingActionButton: Container(
          margin: EdgeInsets.all(10),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: ConstColor.primary,
            tooltip: 'Scan',
            child: SvgPicture.asset("assets/icons/ic_scan.svg"),
            elevation: 4.0,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          selectedItemColor: ConstColor.primary,
          unselectedItemColor: ConstColor.secondaryText,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(bottom: 3),
                child: SvgPicture.asset(
                  "assets/icons/ic_home.svg",
                  color: ConstColor.secondaryText,
                ),
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/ic_home.svg",
                color: ConstColor.primary,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_edit.svg",
                color: ConstColor.secondaryText,
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/ic_edit.svg",
                color: ConstColor.primary,
              ),
              label: "Upload",
            ),
            const BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                ),
                label: "Scan"),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_notification.svg",
                color: ConstColor.secondaryText,
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/ic_notification.svg",
                color: ConstColor.primary,
              ),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/ic_profile.svg",
                color: ConstColor.secondaryText,
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/ic_profile.svg",
                color: ConstColor.primary,
              ),
              label: "Profile",
            ),
          ],
          onTap: (int index) {
            if (index == 2) {}
            onTapChangedMenu(index);
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}




