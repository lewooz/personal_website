import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/widgets/timeline_tile.dart';

class Developer extends StatelessWidget {

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
    return Container(
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
                Icons.developer_mode,
                color: Color(0xff595362),
                size: 30,
              ),
              SizedBox(width: 30,),
              Text(
                "Developer",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff595362),
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Color(0xffECECE9),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I've had a passion for programming since I was a teenager. I was always curious about how various applications was made.",
                  style: commonStyle,
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """I've worked on a couple of projects during university using """,
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """C++ """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "and",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Java""",
                            style: boldStyle
                        )
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "I developed a couple of projects while working as a ERP technical consultant.",
                  style: commonStyle,
                ),
                SizedBox(height: 30,),
                Text(
                  "I have always had the idea of improving myself as a mobile application developer.",
                  style: commonStyle,
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """I started learning """,
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """Android Development """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "with",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Java """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: """as a first step in mobile development.""",
                            style: commonStyle
                        )
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """I developed a """,
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """restaurant food ordering application """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "and an ",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """application for environment monitoring systems for datacenters """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: """on android.""",
                            style: commonStyle
                        )
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """I continued my mobile development learning journey with IOS development and started learning swift.""",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ IOS development """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "and started learning",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Swift""",
                            style: boldStyle
                        ),
                        TextSpan(
                            text: """.""",
                            style: commonStyle
                        )
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """I developed an""",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ agenda application """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "and the same",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ application I developed for environment monitoring systems """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: """using""",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ swift.""",
                            style: boldStyle
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """At the start of 2019, I got into """,
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """Flutter(Dart), """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "which allows to write applications for IOS, Android, Web and desktop with the same code base.",
                            style: commonStyle
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """While improving myself on Flutter, I developed an online product library project with Neo4J as database in Angular Framework at work""",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Flutter, """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "I developed an online product library project with",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Neo4J """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "as database in",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Angular Framework """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "at work",
                            style: commonStyle
                        ),
                      ]
                  ),
                ),
                SizedBox(height: 30,),
                RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: """I developed another product library and it's admin panel at work in""",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ ReactJS """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "library with",
                            style: commonStyle
                        ),
                        TextSpan(
                            text: """ Mobx """,
                            style: boldStyle
                        ),
                        TextSpan(
                            text: "as state management.",
                            style: commonStyle
                        ),
                      ]
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
