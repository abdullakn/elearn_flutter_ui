import 'package:elearn_platform/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  String title;
  String subtitle;

  CategoryTitle({required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color:kFont),),
          Text(subtitle,style: TextStyle(fontSize: 16,color: kFontLight),)
        ],
      ),
      
    );
  }
}