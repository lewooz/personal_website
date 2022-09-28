import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

enum AppPlatform{
  android(icon: Icons.android),
  ios(icon: Icons.apple),
  web(icon: Icons.web),
  flutter(icon: Icons.flutter_dash);

  final IconData? icon;

  const AppPlatform({this.icon});
}