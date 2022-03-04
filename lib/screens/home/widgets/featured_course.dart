import 'package:elearn_platform/models/course.dart';
import 'package:flutter/material.dart';

import 'category_title.dart';
import 'course_item.dart';

class FeaturedCourse extends StatelessWidget {
  final courseList = Course.generatedCourse();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle(title: "Top of the week", subtitle: "View All"),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CourseItem(course: courseList[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 15,
                  );
                },
                itemCount: courseList.length),
          )
        ],
      ),
    );
  }
}
