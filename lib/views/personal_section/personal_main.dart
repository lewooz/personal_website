import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'package:levent_ozkan_personal_website/utilities/screen_sizes.dart';
import 'package:levent_ozkan_personal_website/views/personal_section/flipping_circle.dart';

class PersonalMain extends StatelessWidget {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  String frontImage, backImage;

  @override
  Widget build(BuildContext context) {
    ScreenSize.recalculate(context);
    return Container(
      padding: EdgeInsets.only(
          left: 14.58.wb, right: 14.58.wb, top: 17.12.hb, bottom: 10.hb),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: FlippingCircle("assets/png/turkey_flag.png",
                      "assets/png/turkey_location.png","Born in Turkey"),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FlippingCircle("assets/png/cekmekoy_front.png",
                      "assets/png/cekmekoy_back.png", "Living in Çekmeköy / Istanbul"),
                )
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(children: [
              Align(
                alignment: Alignment.topRight,
                child: FlippingCircle("assets/png/mail_front.png",
                    "assets/png/mail_back.png","My Mail Address"),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: FlippingCircle("assets/png/birth_date_front.png",
                    "assets/png/birth_date_back.png", "My Birth Date"),
              )
            ]),
          )
        ],
      ),
    );
  }
}
