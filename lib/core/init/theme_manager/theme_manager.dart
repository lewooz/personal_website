import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../ui/shared/styles/colors.dart';

enum ThemeType{
  lightTheme,
  darkTheme
}

abstract class _IThemeManager {
  void changeThemeType(ThemeType themeType);
  Color get primaryColor;
  Color get secondaryColor;
  Color get bgWhite;
  Color get scaffoldBackground;
  Color get grey;
  Color get black;

  Duration get normalDuration;
  Duration get mediumDuration;
  Duration get highDuration;
  BoxConstraints get appBoxConstraints;
  List<Shadow> get mainTextShadow;
  List<BoxShadow> get mainBoxShadow;
  List<BoxShadow> get insetBoxShadow;
  List<BoxShadow> get avatarBoxShadow;
  List<BoxShadow> get cardBoxShadow;
  List<BoxShadow> get playerCardShadow;
  EdgeInsets get pageHorizontalPadding;
  LinearGradient get bgGradient;
  LinearGradient get blueGradient;
  LinearGradient get cardGradient;
  LinearGradient get greyGradient;
  BorderRadius get normalBorderRadius;
  Gap get normalSpace;
  Gap get mediumSpace;
  Gap get bigSpace;
  Gap get veryBigSpace;
}

class ThemeManager extends ChangeNotifier with _IThemeManager{
  ThemeType activeThemeType = ThemeType.lightTheme;

  @override
  void changeThemeType(ThemeType themeType) {
    activeThemeType = themeType;
    notifyListeners();
  }

  @override
  Color get black => AppColors.black;

  @override
  Color get bgWhite => AppColors.white;

  @override
  Color get grey => AppColors.mineShaft;

  @override
  Color get primaryColor => AppColors.blueCharcoal;

  @override
  Color get secondaryColor => AppColors.dodgerBlue;

  @override
  Color get scaffoldBackground => AppColors.aquaHaze;

  @override
  Duration get normalDuration => const Duration(milliseconds: 300);

  @override
  Duration get mediumDuration => const Duration(milliseconds: 600);

  @override
  Duration get highDuration => const Duration(milliseconds: 1000);

  @override
  List<Shadow> get mainTextShadow => [Shadow(offset: const Offset(0, 4), blurRadius: 4.0, color: Colors.black.withOpacity(0.25))];

  @override
  List<BoxShadow> get mainBoxShadow => [BoxShadow(offset: const Offset(0, 4), blurRadius: 4.0, color: Colors.black.withOpacity(0.25))];

  @override
  EdgeInsets get pageHorizontalPadding => const EdgeInsets.symmetric(horizontal: 16);

  @override
  LinearGradient get bgGradient => const LinearGradient(
    begin: Alignment(-1.0, -1.0),
    end: Alignment(1.0, 0.977),
    colors: [
      AppColors.mirage,
      Color(0xff24243e),
      AppColors.mirage
    ],
    stops: [0.0, 0.504, 1.0],
  );

  @override
  LinearGradient get blueGradient => const LinearGradient(
    begin: Alignment(-1.0, -0.091),
    end: Alignment(1.0, 0.0),
    colors: [Color(0xff034AB3), AppColors.blueRibbon],
    stops: [0.49, 1.17],
  );

  @override
  LinearGradient get cardGradient => LinearGradient(
    begin: const Alignment(0.0, -1.0),
    end: const Alignment(0.0, 1.0),
    colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
    stops: const [0.42, 0.82],
  );

  @override
  BorderRadius get normalBorderRadius => BorderRadius.circular(8);

  @override
  List<BoxShadow> get insetBoxShadow => [
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.25),
    ),
    const BoxShadow(
        color: Colors.white,
        offset: Offset(3,3),
        blurRadius: 4,
        spreadRadius: -1,
        blurStyle: BlurStyle.inner
    ),
  ];

  @override
  List<BoxShadow> get avatarBoxShadow => [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        offset: Offset.zero,
        blurRadius: 24,
    ),
  ];

  @override
  List<BoxShadow> get cardBoxShadow => [
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.7),
      offset: Offset(1,3),
      blurRadius: 13,
    ),
  ];

  @override
  List<BoxShadow> get playerCardShadow => [
    const BoxShadow(
      color: Color.fromRGBO(54, 136, 255, 0.5),
      offset: Offset(1,3),
      blurRadius: 15,
    ),
  ];

  @override
  LinearGradient get greyGradient => const LinearGradient(
    begin: Alignment(1.194, -1.603),
    end: Alignment(-1.161, 1.512),
    colors: [Color(0xc9222232), Color(0x54c1c1c1)],
    stops: [0.0, 1.0],
  );

  @override
  BoxConstraints get appBoxConstraints => BoxConstraints(
    maxWidth: 1440
  );

  @override
  Gap get bigSpace => Gap(15);

  @override
  Gap get mediumSpace => Gap(10);

  @override
  Gap get normalSpace => Gap(5);

  @override
  Gap get veryBigSpace => Gap(20);

}

final themeProvider = ChangeNotifierProvider((_)=> ThemeManager());