/*
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:levent_ozkan_personal_website/utilities/colors.dart';

class FlippingCircle extends StatelessWidget {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  String frontImage, backImage, topText;

  FlippingCircle(this.frontImage, this.backImage, this.topText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(topText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.PRIMARY_COLOR
        ),),
        SizedBox(height: 5,),
        MouseRegion(
          onEnter: (event) => toggleCard(),
          onExit: (event) => toggleCard(),
          child: FlipCard(
              key: cardKey,
              front: renderCardContent(frontImage),
              back: renderCardContent(backImage)),
        )
      ],
    );
  }

  toggleCard() {
    cardKey.currentState.toggleCard();
  }

  renderCardContent(String image) {
    return Container(
      height: 290,
      width: 290,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(image)),
          border: Border.all(color: AppColors.PRIMARY_COLOR, width: 5)),
    );
  }
}
*/
