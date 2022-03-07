import 'package:elearn_platform/models/course.dart';
import 'package:elearn_platform/screens/details/widgets/course_description.dart';
import 'package:elearn_platform/screens/details/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final Course course;
  DetailsPage({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course: course),
            CourseDescription(course: course,)
          ],
        ),
      )
    );
  }
}