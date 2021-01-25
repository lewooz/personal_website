import 'package:flutter/material.dart';

class PulseWidget extends StatefulWidget {
  final Key key;
  final Widget child;
  final Duration duration;
  final Duration delay;
  final bool infinite;
  final Function(AnimationController) controller;
  final bool manualTrigger;
  final bool animate;

  PulseWidget(
      {this.key,
        this.child,
        this.duration = const Duration(milliseconds: 300),
        this.delay = const Duration(milliseconds: 0),
        this.infinite = false,
        this.controller,
        this.manualTrigger = true,
        this.animate = true});

  @override
  _PulseState createState() => _PulseState();
}

class _PulseState extends State<PulseWidget> with SingleTickerProviderStateMixin {
  AnimationController controller;
  bool disposed = false;
  Animation<double> animationInc;
  Animation<double> animationDec;
  @override
  void dispose() {
    disposed = true;
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);

    animationInc = Tween<double>(begin: 1, end: 1.3).animate(CurvedAnimation(
        parent: controller, curve: Interval(0, 0.5, curve: Curves.easeOut)));

    animationDec = Tween<double>(begin: 1.3, end: 1).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.5, 1, curve: Curves.easeIn)));

    if (widget.controller is Function) {
      widget.controller(controller);
    }

  }

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return Transform.scale(
            scale: (controller.value < 0.5)
                ? animationInc.value
                : animationDec.value,
            child: widget.child,
          );
        });
  }
}