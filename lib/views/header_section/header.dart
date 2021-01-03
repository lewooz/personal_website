import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/header_section/profile_pic.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Stack(
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 91, vertical: 56),
          height: 540,
          width: 100.wb,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.01, 0.0),
              colors: [
                const Color(0xff000000),
                const Color(0xff1f4988),
                const Color(0xff000000)
              ],
              stops: [0.0, 0.5, 1.0],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child: Center(
                    child: WebsafeSvg.asset(
                        "assets/svg/flutter_logo.svg", width: 486),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "Levent Özkan\n",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.w600
                            ),
                            children: [
                              TextSpan(
                                  text: "Senior Mobile & Web Application Developer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600
                                  )
                              )
                            ]
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      WebsafeSvg.asset("assets/svg/react_logo.svg", width: 185.51,),
                      SizedBox(height: 5,),
                      WebsafeSvg.asset("assets/svg/nextjs_logo.svg", width: 334,)
                    ],
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: -26.14.wb/2,
          left: (100.wb/2)-(26.14.wb/2),
          child: ProfilePic(),
        )
      ],
    );
  }
}
