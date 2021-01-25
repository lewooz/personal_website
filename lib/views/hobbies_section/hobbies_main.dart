import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/hobbies_section/hobbies_gallery.dart';

class HobbiesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      color: Color(0xff595362),
      width: 100.wb,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.favorite_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 10,),
              Text(
                "My Hobbies",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(
            "My Philosophy in life:",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700
            ),
          ),
          Text(
            '" No Pain No Gain! "',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
               fontStyle: FontStyle.italic
            ),
          ),
          SizedBox(height: 20,),
          CarouselGallery()

        ],
      ),
    );
  }
}
