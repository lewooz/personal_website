import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:levent_ozkan_personal_website/home_screen.dart';
import 'package:levent_ozkan_personal_website/utilities/colors.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AnimationController lottieController;
  AnimationController textController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Timer(Duration(seconds: 2), (){
        lottieController.forward();
        textController.forward();
      });
      Timer(Duration(seconds: 3), (){
        Get.off(HomeScreen(),transition: Transition.fadeIn);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Scaffold(
      body: Container(
        width: 100.wb,
        height: 100.hb,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeOutLeft(
                manualTrigger: true,
                duration: Duration(milliseconds: 1500),
                controller: (controller) => lottieController = controller,
                child: Lottie.asset("assets/lottie/splash_anim.json", height: 50.hb,fit: BoxFit.contain )),
            SizedBox(
              height: 10,
            ),
            FadeOutRight(
              manualTrigger: true,
              duration: Duration(milliseconds: 1500),
              controller: (controller) => textController = controller,
              child: Text(
                """Welcome to Levent Özkan's Personal Website
               Levent Özkan Kişisel Web Sitesine Hoşgeldiniz""",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.PRIMARY_COLOR
                ),
              ),
            )
          ],
        ),
      )
      );
  }
}
