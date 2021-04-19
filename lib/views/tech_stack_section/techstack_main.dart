import 'package:flutter/material.dart';

import 'package:levent_ozkan_personal_website/utilities/colors.dart';

import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/tech_stack_section/stack_logo.dart';
import 'package:levent_ozkan_personal_website/views/widgets/responsive_widget.dart';
import 'package:websafe_svg/websafe_svg.dart';

class TechStackMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    final bool isSmall = ResponsiveWidget.isSmallScreen(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 50,
          horizontal: isSmall ? 15 : 14.32.wb
      ),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WebsafeSvg.asset(
                  "assets/svg/technology.svg",
                  width: 30,
                  height: 30,
                  color: AppColors.PRIMARY_COLOR,
                ),
                SizedBox(width: 10,),
                Text(
                  "Tech Stack",
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColors.PRIMARY_COLOR,
                      fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              child: Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 25,
                  runSpacing: 25,
                  children: [
                    StackLogo("assets/svg/dart.svg", "Dart",0 ),
                    StackLogo("assets/svg/flutter.svg", "Flutter",1, logoSize: 60),
                    StackLogo("assets/svg/javascript.svg", "Javascript",2),
                    StackLogo("assets/svg/typescript.svg", "Typescript",3),
                    StackLogo("assets/svg/reactjs.svg", "ReactJS",4, logoSize: 75),
                    StackLogo("assets/svg/firebase.svg", "Firebase",5, logoSize: 55),
                    StackLogo("assets/svg/algolia.svg", "Algolia(Search API)",6, logoSize: 90,),
                    StackLogo("assets/svg/onesignal.svg", "OneSignal(Notification API)",7, logoSize: 55,),
                    StackLogo("assets/svg/swift.svg", "Swift(IOS)",8),
                    StackLogo("assets/svg/java.svg", "Java(Android)",9, logoSize: 60,),
                    StackLogo("assets/svg/kotlin.svg", "Kotlin(Android)",10)
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
