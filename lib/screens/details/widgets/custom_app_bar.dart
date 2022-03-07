import 'package:elearn_platform/constants/colors.dart';
import 'package:elearn_platform/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20)
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(height: 20)
            ],
          ),
          Positioned(
              bottom: 0,
              right: 25,
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Start Class'),
                  style: ElevatedButton.styleFrom(
                      primary: kAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              )),
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
              ),
            ),
          ),

            Positioned(
            top: 25,
            right: 25,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.bookmark),
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}


