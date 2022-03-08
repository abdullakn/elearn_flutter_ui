import 'package:elearn_platform/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Module{
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module({required this.iconBorder,required this.iconBg,required this.iconColor,required this.icon,required this.title,required this.desc,
  required this.moduleBorder,required this.moduleBg,required this.buttonColor,required this.buttonFont,required this.time,required this.lesson});


  static List<Module> generateModule(){
    return [
      Module(iconBorder:kAccent, iconBg:kAccent, iconColor:Colors.white, icon:Icons.play_arrow_rounded, title:"Module 1", desc:"how it started and \ntheir explanation", moduleBorder: kPrimaryLight, moduleBg:kPrimaryLight, buttonColor:kPrimary, buttonFont:kPrimaryDark, time:"2h 15 min", lesson:"2 lesson"),
      Module(iconBorder:kFontLight.withOpacity(0.3), iconBg:Colors.white, iconColor:kFontLight.withOpacity(0.7), icon:Icons.lock_outline_rounded,title:"Module 2", desc:"how it started and \ntheir explanation", moduleBorder: kPrimaryLight, moduleBg:Colors.white, buttonColor:Colors.grey.withOpacity(0.2), buttonFont:Colors.grey, time:"2h 15 min", lesson:"2 lesson")

    ];
  }
}