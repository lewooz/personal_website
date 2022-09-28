import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum Media{
  PHONE, TABLET, DESKTOP, LARGE_DESKTOP, TOO_LARGE_DESKTOP
}

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
/*  double responsiveWidth(double value) => (value * mediaQuery.size.width) / kDesignWidth;
  double responsiveHeight(double value) => (value * mediaQuery.size.height) / kDesignHeight;*/
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
  double screenAwareSize(double val) =>
      (val * 1.143) * (MediaQuery.of(this).size.width / 375);
  double get textScaleFactor => width / 1400 > 1.5 ? 1.5 : width / 1400;
  MediaQueryData get mediaQueryData => mediaQuery.copyWith(textScaleFactor: textScaleFactor);

  String get getDeviceLocale => deviceLocale.toString().split("_")[0];

}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get statusBarHeight => mediaQuery.padding.top;
  double get bottomBarHeight => mediaQuery.padding.bottom;
  double get smallPaddingValue => height * 0.02216;

  Media get media {
    if(mediaQuery.size.width>=2559) {
      return Media.TOO_LARGE_DESKTOP;
    }
    if(mediaQuery.size.width>=1170) {
      return Media.LARGE_DESKTOP;
    }
    if(mediaQuery.size.width>=992) {
      return Media.DESKTOP;
    }
    if(mediaQuery.size.width>=770) {
      return Media.TABLET;
    }
    return Media.PHONE;
  }
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtension on BuildContext {
  EdgeInsetsGeometry get normalPadding => const EdgeInsets.all(16);
  EdgeInsetsGeometry get horizontalNormalPadding =>
      const EdgeInsets.symmetric(horizontal: 16);
}


