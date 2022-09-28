import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supercharged/supercharged.dart';

enum CustomAnimationType{
  FadeInLeft, FadeInRight, FadeIn, FadeInUp, FadeInDown
}

class CustomAnimation extends HookWidget {
  final Widget child;
  final bool? animate;
  final Curve? curve;
  final Duration? duration, delay;
  final bool scaleUp;
  final CustomAnimationType animationType;
  final double from;

  const CustomAnimation({required this.child, required this.animationType, this.animate, this.duration, this.delay, this.curve, this.scaleUp = false, this.from = 40.0});

  @override
  Widget build(BuildContext context) {
    Animation<Offset> slideAnimation;
    Animation<double> opacityAnimation, scaleAnimation, translateAnimation;

    var controller = useAnimationController(duration: duration ?? 0.5.seconds);
    controller.curve(curve ?? Curves.easeIn);


    Offset getSlideAnimation(){
      switch (animationType){
        case CustomAnimationType.FadeInLeft:
          return Offset(-from,0);
        case CustomAnimationType.FadeInRight:
          return Offset(-from,0);
        case CustomAnimationType.FadeIn:
          return const Offset(0,0);
        case CustomAnimationType.FadeInUp:
          return Offset(0,-from);
        case CustomAnimationType.FadeInDown:
          return Offset(0,-from);
      }
    }

    slideAnimation = getSlideAnimation().tweenTo(Offset.zero).animatedBy(controller);
    opacityAnimation = 0.0.tweenTo(1.0).animatedBy(controller);
    scaleAnimation =  (scaleUp ? 0.0 : 1.0).tweenTo(1.0).animatedBy(controller);
    translateAnimation = (-40.0).tweenTo(0.0).animatedBy(controller);


    useEffect((){
      if(animate ?? false) {
        Timer(delay ?? 0.seconds, (){
          controller.forward();
        });
      }
    },[animate]);

    return Transform.translate(
      key: UniqueKey(),
      offset: Offset(translateAnimation.value,0),
      child: Transform.scale(
        key: UniqueKey(),
        scale: scaleAnimation.value,
        child: FadeTransition(
          opacity: opacityAnimation,
          child: child,
        ),
      ),
    );
  }
}


