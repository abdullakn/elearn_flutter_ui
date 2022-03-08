import 'package:elearn_platform/constants/colors.dart';
import 'package:elearn_platform/models/modules.dart';
import 'package:elearn_platform/screens/details/widgets/course_modules.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final moduleList=Module.generateModule();
   CourseProgress({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        children: [
          Row(
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
             SizedBox(height: 20,),
        //  CourseModules(module: moduleList[0]),
        ...moduleList.map((e) => CourseModules(module: e)).toList()
      
        ],
      ),
      
    );
  }
}