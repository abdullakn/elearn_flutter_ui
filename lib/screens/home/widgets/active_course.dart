import 'package:elearn_platform/constants/colors.dart';
import 'package:elearn_platform/screens/home/widgets/category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle(title: "Currently Active", subtitle: "View All"),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/course-3.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Newton Theorem",
                      style: TextStyle(
                          color: kFont,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "2 lesson",
                      style: TextStyle(
                          color: kFontLight,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 60,
                  lineWidth: 5,
                  percent: 0.61,
                  center: Text(
                    '61%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  progressColor: kAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
