import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:visibility_detector/visibility_detector.dart';

enum AnimationType{
  TRANSLATE,
  SCALE,
  FADE_IN
}
enum RevealDirection{
  LEFT,
  RIGHT,
  BOTTOM,
  TOP
}


class RevealAnim extends StatefulWidget {
  final Widget child;
  final Key key;
  final RevealDirection revealDirection;
  final AnimationType animationType;
  final Duration? delay;
  final dynamic from;

  RevealAnim(
      {required this.child,
      required this.key,
      this.revealDirection = RevealDirection.LEFT,
      this.animationType = AnimationType.TRANSLATE,
      this.delay,
      this.from = 200});

  @override
  _RevealAnimState createState() => _RevealAnimState();
}

class _RevealAnimState extends State<RevealAnim> {
  CustomAnimationControl control = CustomAnimationControl.playReverse;


  Offset getStartingOffset(){
    switch(widget.revealDirection){
      case RevealDirection.LEFT:
        return Offset(-widget.from,0);
      case RevealDirection.RIGHT:
        return Offset(widget.from,0);
      case RevealDirection.BOTTOM:
        return Offset(0,widget.from);
      case RevealDirection.TOP:
        return Offset(0,-widget.from);
      default:
        return Offset(-widget.from,0);
    }
  }

  Tween getTween(){
    switch(widget.animationType){
      case AnimationType.TRANSLATE:
         return getStartingOffset().tweenTo(Offset.zero);
      case AnimationType.SCALE:
        return 0.4.tweenTo(1);
      case AnimationType.FADE_IN:
        return 0.4.tweenTo(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomAnimation<dynamic>(
        control: control,
        curve: Curves.ease,
        tween:  getTween(),
        duration: control == CustomAnimationControl.play ? 1.seconds : 1.milliseconds,
        builder: (context, child, value) {
          return renderAnim(value);
        });
  }

  Widget renderAnim(dynamic value){
    switch(widget.animationType){
      case AnimationType.TRANSLATE:
        return Transform.translate(
          offset: value,
          child: buildVisibilityDetector(),
        );
      case AnimationType.SCALE:
         return(
             Transform.scale(
               scale: value,
               child: buildVisibilityDetector(),
             ));
      case AnimationType.FADE_IN:
        return buildVisibilityDetector();
    }
  }

  VisibilityDetector buildVisibilityDetector() {
    return VisibilityDetector(
            key: widget.key,
            onVisibilityChanged: (visibilityInfo) {
              if (visibilityInfo.visibleFraction > 0.1) {
                Timer(widget.delay ?? 0.seconds, ()=>setState(() {
                  control = CustomAnimationControl.play;
                }));
              }
              if (visibilityInfo.visibleFraction == 0) {
                setState(() {
                  control = CustomAnimationControl.playReverse;
                });
              }
            },
            child: AnimatedOpacity(
                opacity: control == CustomAnimationControl.play ? 1 : 0,
                duration: control == CustomAnimationControl.play ? 1.seconds : 1.milliseconds,
                child: widget.child),
          );
  }
}
