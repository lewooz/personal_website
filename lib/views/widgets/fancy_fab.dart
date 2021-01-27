import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:levent_ozkan_personal_website/viewmodels/home_vm.dart';
import 'package:levent_ozkan_personal_website/views/widgets/pulse_widget.dart';
import 'package:provider/provider.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

import '../../utilities/colors.dart';
import '../../utilities/colors.dart';

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
        Container(
          width: 148,
          height: 131,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 0,
          openLeftPosition: 75,
          iconData: Entypo.graduation_cap,
          tooltipText: "Education",
          scrollIndex: 2,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 16,
          openLeftPosition: 107,
          iconData: Icons.settings,
          tooltipText: "Career",
          scrollIndex: 3,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 0,
          openLeftPosition: 43,
          iconData: Icons.developer_mode,
          tooltipText: "Developer",
          scrollIndex: 4,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 51,
          openLeftPosition: 118,
          tooltipText: "Tech Stack",
          isIcon: false,
          scrollIndex: 6,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 86,
          openLeftPosition: 107,
          iconData: MaterialCommunityIcons.cast_education,
          tooltipText: "Courses Taken",
          scrollIndex: 7,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 100,
          openLeftPosition: 75,
          iconData: Icons.favorite_outlined,
          tooltipText: "Hobbies",
          scrollIndex: 8,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 100,
          openLeftPosition: 43,
          iconData: Icons.language,
          tooltipText: "Languages",
          scrollIndex: 9,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 86,
          openLeftPosition: 11,
          iconData: Icons.apps,
          tooltipText: "Applications",
          scrollIndex: 5,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 51,
          openLeftPosition: 0,
          iconData: Icons.person_pin,
          tooltipText: "Personal Info",
          scrollIndex: 1,
        ),
        MiniFabCircle(
          isOpen: isOpen,
          openTopPosition: 16,
          openLeftPosition: 11,
          iconData: Icons.home,
          tooltipText: "Home",
          scrollIndex: 0,
        ),
        Positioned(
          left: (148 / 2) - 20,
          top: (131 / 2) - 20,
          child: PulseWidget(
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

class MiniFabCircle extends StatefulWidget {
  bool isOpen;
  double openTopPosition, openLeftPosition;
  IconData iconData;
  String tooltipText;
  int scrollIndex;
  bool isIcon;

  MiniFabCircle(
      {this.isOpen,
      this.openTopPosition,
      this.openLeftPosition,
      this.iconData,
      this.tooltipText,
      this.scrollIndex,
      this.isIcon = true});

  @override
  _MiniFabCircleState createState() => _MiniFabCircleState();
}

class _MiniFabCircleState extends State<MiniFabCircle> {
  bool showTooltip = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: widget.isOpen ? widget.openLeftPosition : 148 / 2,
      top: widget.isOpen ? widget.openTopPosition : 131 / 2,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOutQuart,
      child: SimpleTooltip(
        show: showTooltip,
        borderColor: AppColors.PRIMARY_COLOR,
        ballonPadding: EdgeInsets.all(5),
        arrowTipDistance: 3,
        arrowLength: 7,
        content: RichText(
          text: TextSpan(
              text: widget.tooltipText,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
        ),
        child: InkWell(
          onTap: onClick,
          child: MouseRegion(
            onHover: onMouseHover,
            onExit: onMouseExit,
            child: AnimatedContainer(
              width: widget.isOpen ? 30 : 0,
              height: widget.isOpen ? 30 : 0,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    center: Alignment(0.0, 0.0),
                    radius: 0.7,
                    colors: [const Color(0xff1f4988), const Color(0xff000000)],
                    stops: [0.0, 1.0],
                  )),
              child: Visibility(
                visible: widget.isOpen ? true : false,
                child: Center(
                  child: widget.isIcon ? Icon(
                    widget.iconData,
                    color: Colors.white,
                    size: 17,
                  ) :
                  SvgPicture.asset(
                    "assets/svg/technology.svg",
                    width: 17,
                    height: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onMouseHover(PointerHoverEvent event) {
    setState(() {
      showTooltip = true;
    });
  }

  void onMouseExit(PointerExitEvent event) {
    setState(() {
      showTooltip = false;
    });
  }

  void onClick() {
    context.read<HomeVM>().scrollToPosition(widget.scrollIndex);
  }
}
