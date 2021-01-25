import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/colors.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/developer_section/portfolio_subsection.dart';

class MyProjects extends StatelessWidget {

  TextStyle titleStyle = TextStyle(
    fontSize: 24,
    color: AppColors.PRIMARY_COLOR,
    fontWeight: FontWeight.w700
  );

  TextStyle commonStyle = TextStyle(
      fontSize: 20,
      color: Color(0xff595362)
  );

  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      margin: EdgeInsets.only(top: 55),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Here are my projects:",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.normal,
              color: Color(0xff595362),
            ),
          ),
          SizedBox(height: 100,),
          //Color(0xff595e52)
          PortfolioSubsection(
              image: Image.asset("assets/png/website_screenshot.png"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This website',
                    style: titleStyle,
                  ),
                  Text(
                    'A web application developed in Flutter.',
                    style: commonStyle,
                  ),
                ],
              )
          ),
          SizedBox(height: 100,),
          PortfolioSubsection(
              image: Image.asset("assets/jpg/pia_manti.jpg"),
              isLeftAligned: false,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Pia-Mantı',
                    style: titleStyle,
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    """The first application I developed using Android Native(Java). Has features like food-ordering, notifications etc.
Development Year: 2019
Github: https://github.com/lewooz/PiaManti""",
                    style: commonStyle,
                    textAlign: TextAlign.end,
                  ),
                ],
              )
          ),
          SizedBox(height: 100,),
          PortfolioSubsection(
              image: Image.asset("assets/jpg/nti.jpg"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nti Go',
                    style: titleStyle,
                  ),
                  Text(
                    """The second application I developed using Android Native(Java). The company that I was working in at that time was selling these environment monitoring products. I made this application for our customers for easy environment monitoring through mobile phones.
Development Year: 2019
Github android: https://github.com/lewooz/NtiGo
Github swift: https://github.com/lewooz/NtiGoSwift
""",
                    style: commonStyle,
                  ),
                ],
              )
          ),
          SizedBox(height: 100,),
          PortfolioSubsection(
              image: Image.asset("assets/png/localy.png"),
              isLeftAligned: false,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Localy',
                    style: titleStyle,
                  ),
                  Text(
                    """An application made for local shops. A lot of features included like loyalty, ordering etc. 
Development Year: 2020
Github: https://github.com/locallyoncloud/localy-flutter
                    """,
                    style: commonStyle,
                    textAlign: TextAlign.end,
                  ),
                ],
              )
          ),
          SizedBox(height: 60,),
          Container(
            width: 75.wb,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  children: [
                    TextSpan(
                        text: """All the web and mobile applications I made for""",
                        style: commonStyle,
                    ),
                    TextSpan(
                        text: """ Depixen """,
                        style: commonStyle.copyWith(color: AppColors.PRIMARY_COLOR)
                    ),
                    TextSpan(
                      text: """are in-house for now and I can not show them here. Some of these are: """,
                      style: commonStyle,
                    ),
                    TextSpan(
                        text: """Flutter no-code app development platform, product-library over AI, Configurator tool for architecture companies.""",
                        style: commonStyle.copyWith(color: AppColors.PRIMARY_COLOR)
                    ),
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
