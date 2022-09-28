import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:levent_ozkan_personal_website/views/widgets/reveal_anim.dart';
import 'package:supercharged/supercharged.dart';

class StackLogo extends StatelessWidget {
  String svgImage, text;
  double logoSize;
  int index;
  MainAxisAlignment mainAxisAlignment;

  StackLogo(this.svgImage, this.text,this.index, {this.logoSize = 70, this.mainAxisAlignment = MainAxisAlignment.spaceBetween,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 137,
      height: 137,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: RadialGradient(
          center: Alignment(0.0, 0.0),
          radius: 1.5,
          colors: [const Color(0xffffffff), const Color(0xff726e6e)],
          stops: [0.0, 1.0],
        ),
      ),
      child: RevealAnim(
        key: Key(index.toString()),
        delay: (index*200).milliseconds,
        from: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: SvgPicture.asset(svgImage,width: logoSize,)),
            SizedBox(height: 10,),

            Text(
                text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            )

          ],
        ),
      ),
    );
  }
}
