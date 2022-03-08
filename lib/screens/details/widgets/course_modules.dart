import 'package:elearn_platform/constants/colors.dart';
import 'package:elearn_platform/models/modules.dart';
import 'package:flutter/material.dart';

class CourseModules extends StatelessWidget {
  final Module module;
  CourseModules({required this.module});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180,
        child: Row(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: module.iconBorder, width: 2),
                              color: module.iconBg,
                              shape: BoxShape.circle),
                          child: Icon(
                            module.icon,
                            size: 30,
                            color: module.iconColor,
                          )),
                      Expanded(
                          child: Column(
                        children: List.generate(
                            20,
                            (index) => Expanded(
                                    child: Container(
                                  width: 2,
                                  color: index % 2 == 0
                                      ? module.iconBorder
                                      : Colors.transparent,
                                ))),
                      ))
                    ],
                  ),
                )),
            Flexible(
              
                flex: 5,
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: module.moduleBorder, width: 2),
                      color: module.moduleBg,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            module.title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: kFontLight),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: kFontLight,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        module.desc,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kFont.withOpacity(0.7)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          _buildButton(Icons.access_time_filled, module.time),
                          SizedBox(
                            width: 5,
                          ),
                          _buildButton(Icons.bookmark,module.lesson),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ));
  }

  Container _buildButton(IconData data, String text) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: module.buttonColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            data,
            size: 20,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
                color: module.buttonFont, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
