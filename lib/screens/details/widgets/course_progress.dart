import 'package:elearn_platform/constants/colors.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  const CourseProgress({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("The Progress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: kFont),),
          Row(
            children: [
              Icon(Icons.grid_view),
              SizedBox(width: 20,),
              Icon(Icons.list)

            ],
          )
        ],
      ),
      
    );
  }
}