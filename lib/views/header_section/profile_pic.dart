import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';

import '../../utilities/colors.dart';
import '../widgets/responsive_widget.dart';

class ProfilePic extends StatelessWidget {


 /* @override
  Widget build(BuildContext context) {
    final bool isSmall = ResponsiveWidget.isSmallScreen(context);
    ScreenSize.recalculate(context);
    return Container(
      width: isSmall ? 60.8.wb : 26.14.wb,
      height: ,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        gradient: LinearGradient(
          begin: Alignment(-1.49, 0.0),
          end: Alignment(1.43, 0.0),
          colors: [
            const Color(0xff000000),
            const Color(0xff1f4988),
            const Color(0xff000000)
          ],
          stops: [0.0, 0.51, 1.0],
        ),
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: Center(
          child: ClipOval(
            child: Image.asset(
              "assets/jpg/levent_profile_photo.jpg",
              width: 25.wb,
              height: 25.wb,
              fit: BoxFit.cover,
            ),
          ),      ),
      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(16),
        shape: CircleBorder(
          side: BorderSide(
            color: AppColors.PRIMARY_COLOR,
            width: 5,
          ),
        ),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/jpg/levent_profile_photo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

}
