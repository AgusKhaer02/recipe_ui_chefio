import 'package:flutter/material.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:unicons/unicons.dart';

class PasswordCheck extends StatefulWidget {
  final String checkLabel;
  final bool isActive;
  const PasswordCheck({
    Key? key, required this.isActive, required this.checkLabel,
  }) : super(key: key);

  @override
  State<PasswordCheck> createState() => _PasswordCheckState();
}

class _PasswordCheckState extends State<PasswordCheck> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 0, 10),
      child: Row(
        children: [
          checkIcon(widget.isActive),
          SizedBox(
            width: 10,
          ),
          checkLabel(widget.isActive,widget.checkLabel),
        ],
      ),
    );
  }

  Text checkLabel(bool isActive,String label) {
    if(isActive){
      return Text(
        label,
        style: ConstTxtStyle.paragraph1(textColor: Colors.black),
      );
    }else{
      return Text(
        label,
        style: ConstTxtStyle.paragraph1(textColor: Color(0xFF8D8D8D)),
      );
    }

  }

  CircleAvatar checkIcon(bool isActive) {
    if(isActive){
      return CircleAvatar(
        backgroundColor: Color(0xFFAFFFDF),
        radius: 15,
        child: Icon(
          UniconsLine.check,
          color: ConstColor.primary,
        ),
      );
    }else{
      return CircleAvatar(
        backgroundColor: Color(0xADC0C0C0),
        radius: 15,
        child: Icon(
          UniconsLine.check,
          color: ConstColor.secondaryText,
        ),
      );
    }

  }
}