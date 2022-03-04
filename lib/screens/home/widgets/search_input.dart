import 'package:elearn_platform/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                  fillColor: kFontLight.withOpacity(0.1),
                  filled: true,
                  contentPadding: EdgeInsets.all(18),
                  border: InputBorder.none,
                  hintText: 'Search for history, classes',
                  hintStyle: TextStyle(color: kFontLight)),
            ),
          ),
          Positioned(
              top: 33,
              right: 45,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: kAccent, borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/icons/search.png',
                  width: 20,
                ),
              ))
        ],
      ),
    );
  }
}
