import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:levent_ozkan_personal_website/views/widgets/pulse_widget.dart';

class FancyFab extends StatefulWidget {
  @override
  _FancyFabState createState() => _FancyFabState();
}

class _FancyFabState extends State<FancyFab>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  AnimationController animateController;
  AnimationController iconAnimController;
  double size = 40;

  @override
  void initState() {
    super.initState();
    iconAnimController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: -45,
          openLeftPosition: 20,
          iconData: Entypo.graduation_cap,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: -30,
          openLeftPosition: 52,
          iconData: Icons.settings,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: -45,
          openLeftPosition: -12,
          iconData: Icons.developer_mode,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 5,
          openLeftPosition: 63,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 40,
          openLeftPosition: 52,
          iconData: MaterialCommunityIcons.cast_education,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 54,
          openLeftPosition: 20,
          iconData:Icons.favorite_outlined,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 54,
          openLeftPosition: -14,
          iconData: Icons.language,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 40,
          openLeftPosition: -44,
          iconData: Icons.apps,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 5,
          openLeftPosition: -55,
          iconData: Icons.person_pin,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: -30,
          openLeftPosition: -44,
          iconData: Icons.home,
        ),
        PulseWidget(
          controller: (controller) => animateController = controller,
          child: InkWell(
            onTap: onFabClick,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  center: Alignment(0.0, 0.0),
                  radius: 0.7,
                  colors: [const Color(0xff1f4988), const Color(0xff000000)],
                  stops: [0.0, 1.0],
                ),
              ),
              child: Center(
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: iconAnimController,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  onFabClick() {
    setState(() {
      isOpen = !isOpen;
    });
    if (isOpen) {
      iconAnimController.forward();
    } else {
      iconAnimController.reverse();
    }
    animateController.forward();
    Timer(Duration(milliseconds: 302), () {
      animateController.reset();
    });
  }
}

class MiniFabCircle extends StatelessWidget {
  bool isOpen;
  double openTopPosition, openLeftPosition;
  IconData iconData;

  MiniFabCircle(
      {
      this.isOpen,
      this.openTopPosition,
      this.openLeftPosition,
      this.iconData
      });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: isOpen ? openLeftPosition : 20,
      top: isOpen ? openTopPosition : 20,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOutQuart,
      child: AnimatedContainer(
        width: isOpen ? 30 : 0,
        height: isOpen ? 30 : 0,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              center: Alignment(0.0, 0.0),
              radius: 0.7,
              colors: [const Color(0xff1f4988), const Color(0xff000000)],
              stops: [0.0, 1.0],
            )),
        child: Center(
          child: Icon(
            iconData,
            color: Colors.white,
            size: 17,
          ),
        ),
      ),
    );
  }
}
