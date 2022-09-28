import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/core/extensions/context_extensions.dart';
import 'package:levent_ozkan_personal_website/utilities/colors.dart';
import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';

class LanguagesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 50,
          horizontal: context.dynamicWidth(14.32)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: Color(0xff595362),
                size: 30,
              ),
              SizedBox(width: 30,),
              Text(
                "Languages I speak",
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
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
                renderLanguageRow("assets/png/tr_flag.png", "Turkish"),
                renderLanguageRow("assets/png/england_flag.png", "English")
            ],
          )
        ],
      ),
    );
  }

  renderLanguageRow(String imageString, String text){
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Container(
            width: 230,
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageString),
              )
            ),
          ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: AppColors.GREY
          ),
        )
      ],
    );

  }
}
