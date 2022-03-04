import 'package:elearn_platform/constants/colors.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Image.asset(
                          "assets/images/course-4.jpg",
                          fit: BoxFit.cover,
                        ))),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/author-1.png",
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Amal Neerad",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Painting ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kFont,
                                    fontSize: 18),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: kFontLight, shape: BoxShape.circle),
                              ),
                              Text(
                                "2h 5min",
                                style: TextStyle(
                                    color: kFontLight,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
          Positioned(
              bottom: 70,
              right: 20,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text("Start")))
        ],
      ),
    );
  }
}
