import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/career_section/expandable_row.dart';

class Career extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      color: Color(0xff011447),
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 14.32.wb
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 10,),
              Text(
                "Career",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          ExpandableRow()
        ],
      ),
    );
  }
}
