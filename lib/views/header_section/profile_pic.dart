import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      width: 26.14.wb,
      height: 26.14.wb,
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
      child: Center(
        child: ClipOval(
          child: Image.asset(
            "assets/jpg/levent_profile_photo.jpg",
            width: 25.wb,
            height: 25.wb,
            fit: BoxFit.cover,
          ),
        ),      ),
    );
  }
}
