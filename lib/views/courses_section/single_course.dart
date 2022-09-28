import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:levent_ozkan_personal_website/utilities/colors.dart';
import 'package:levent_ozkan_personal_website/views/widgets/reveal_anim.dart';
import 'package:supercharged/supercharged.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;


class SingleCourse extends StatelessWidget {
  String courseYear, courseTitle, courseLink, techLogo;
  double logoAngle;
  int index;

  SingleCourse(this.index,this.courseYear, this.courseTitle, this.courseLink, this.techLogo,
      {this.logoAngle = math.pi / 4});


  @override
  Widget build(BuildContext context) {
    return RevealAnim(
      animationType: AnimationType.FADE_IN,
      key: Key(index.toString()),
      delay: (index*100).milliseconds,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(5, 8),
              blurRadius: 3,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courseYear,
                          style: TextStyle(
                              color: AppColors.GREY,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          courseTitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AppColors.GREY,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.launch,
                        size: 30,
                        color: AppColors.GREY,
                      ),
                      onPressed: goLink)
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: -10,
              child: IgnorePointer(
                child: Transform.rotate(angle: logoAngle,
                  child: Opacity(
                      opacity: 0.4,
                      child: SvgPicture.asset(
                        techLogo, width: 90,)),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  goLink() async {
    if (await canLaunch(courseLink)) {
      await launch(courseLink);
    } else {
      throw 'Could not launch $courseLink';
    }
  }
}
