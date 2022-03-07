import 'package:elearn_platform/constants/colors.dart';
import 'package:elearn_platform/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  CourseDescription({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal:25,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
              
                height: 20,
                width: 20,

                decoration: BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: ClipRRect(
                  child:  Image.asset(course.authorImg,fit: BoxFit.cover,),
                )
              ),
              SizedBox(width: 5,),
            
              Text(course.author),
                SizedBox(width: 5,),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: kFontLight,
                  shape: BoxShape.circle
                ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.access_time_filled,color: kAccent,),
                SizedBox(width: 5,),
              Text('1 hr 2 min',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: kFont),)
            ],
          ),
          SizedBox(height: 10,),
          Text(course.title,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 22,color: kFont),),
          SizedBox(height: 10,),
          Text("This course is mainly focused  into\nhow to become a good painter",style: TextStyle(
            wordSpacing: 2,
            
            fontSize: 16,color: kFontLight
          ),)
        ],
      ),
      
    );
  }
}