import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/courses_section/single_course.dart';
import 'dart:math' as math;

import 'package:levent_ozkan_personal_website/views/widgets/responsive_widget.dart';

class CoursesMain extends StatelessWidget {

  final TextStyle commonStyle = TextStyle(
      fontSize: 18,
      color: Color(0xff595362)
  );
  final TextStyle boldStyle = TextStyle(
      fontSize: 18,
      color: Color(0xff1f4988),
      fontWeight: FontWeight.w700
  );

  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    final bool isSmall = ResponsiveWidget.isSmallScreen(context);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 50,
          horizontal: isSmall ? 15 : 14.32.wb
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                MaterialCommunityIcons.cast_education,
                color: Color(0xff595362),
                size: 30,
              ),
              SizedBox(width: 30,),
              Text(
                "Courses Taken",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff595362),
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SingleCourse(0,"2019", "Android Mobil Uygulama Kursu: Kotlin & Java", "https://www.udemy.com/course/android-o-mobil-uygulama-dersi-kotlin-java/","assets/svg/android_logo.svg"),
              SizedBox(height: 10,),
              SingleCourse(1,"2019", "Android Mobil Uygulama İleri Seviye", "https://www.udemy.com/course/android-mobil-uygulama-kursu-seviye-2/","assets/svg/android_logo.svg"),
              SizedBox(height: 10,),
              SingleCourse(2,"2019", "The Complete RxJava 2 For Android Development Masterclass", "https://www.udemy.com/course/rxjavarxandroid-bootcamp-reactivex-for-android-developers/","assets/svg/android_logo.svg"),
              SizedBox(height: 10,),
              SingleCourse(3,"2019", "iOS 14 & Swift 5: Başlangıçtan İleri Seviyeye Mobil Uygulama", "https://www.udemy.com/course/ios-gelistirme-kursu/","assets/svg/swift.svg",logoAngle: math.pi/2,),
              SizedBox(height: 10,),
              SingleCourse(4,"2020", "Sıfırdan Flutter ile Android ve Ios Apps Development", "https://www.udemy.com/course/sifirdan-flutter-ile-android-ve-ios-apps-development/","assets/svg/flutter_notext_logo.svg",logoAngle: math.pi/5),
              SizedBox(height: 10,),
              SingleCourse(5,"2020", "React - The Complete Guide (incl Hooks, React Router, Redux)", "https://www.udemy.com/course/react-the-complete-guide-incl-redux/","assets/svg/reactjs.svg"),
            ],
          )
        ],
      ),
    );
  }
}
