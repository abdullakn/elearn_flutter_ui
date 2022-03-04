import 'package:elearn_platform/constants/colors.dart';
import 'package:elearn_platform/screens/home/widgets/active_course.dart';
import 'package:elearn_platform/screens/home/widgets/category_title.dart';
import 'package:elearn_platform/screens/home/widgets/course_item.dart';
import 'package:elearn_platform/screens/home/widgets/emoji_text.dart';
import 'package:elearn_platform/screens/home/widgets/featured_course.dart';
import 'package:elearn_platform/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeaturedCourse(),
            ActiveCourse()
            
            // CourseItem()
          ],
        ),
      ),
    );
  }





  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "hello user..!",
          style: TextStyle(color: kFontLight, fontSize: 16),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(top: 10, right: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: kFontLight.withOpacity(0.3), width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  "assets/icons/notification1.png",
                  width: 25,
                )),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration:
                      BoxDecoration(color: kAccent, shape: BoxShape.circle),
                ))
          ],
        )
      ],
    );
  }
}
