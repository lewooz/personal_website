import 'package:flutter/material.dart';

bool get isPortrait => ScreenSize.orientation == Orientation.portrait;

class ScreenSize {
  static double w;
  static double h;
  static double _minDimension;
  static double _screenWidth;
  static double _screenHeight;
  static Orientation orientation;
  static MediaQueryData _mediaQueryData;

  static double get screenWidth => _screenWidth;

  static void recalculate(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;

    w = _screenWidth / 100;
    h = _screenHeight / 100;

    if (_screenWidth < _screenHeight) {
      orientation = Orientation.portrait;
      _minDimension = _screenWidth / 100.0;
    } else {
      orientation = Orientation.landscape;
      _minDimension = _screenHeight / 100.0;
    }
  }

  static double get screenHeight => _screenHeight;
}

extension DoubleToMinimumScreenBloc on num {
  double get sb => this * ScreenSize._minDimension;
  double get hb => this * ScreenSize.h;
  double get wb => this * ScreenSize.w;
}