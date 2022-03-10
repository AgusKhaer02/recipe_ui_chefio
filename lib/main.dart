import 'package:flutter/material.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/screens/get_started/get_started_screen.dart';

main() {
  runApp(ChefioApp());
}


class ChefioApp extends StatelessWidget {
  const ChefioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chefio App",
      home: GetStartedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
