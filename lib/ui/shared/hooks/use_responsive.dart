import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:levent_ozkan_personal_website/core/extensions/context_extensions.dart';

///CSS-LIKE useResponsive hook by @Levent ÖZKAN

T useResponsive<T>(
    {required dynamic largeDesktopValue,
      T? phone, T? tablet,T? desktop,T? tooLargeDesktop}) {
  return use<dynamic>(UseResponsiveHook(
      largeDesktopValue: largeDesktopValue,
      phone: phone,
      tablet: tablet,
      desktop: desktop,
     ));
}

class UseResponsiveHook<T> extends Hook<T?> {
  final T largeDesktopValue;
  final T? phone, tablet, desktop;

  const UseResponsiveHook(
      {required this.largeDesktopValue,
        this.phone,
        this.tablet,
        this.desktop,
       });

  @override
  _UseResponsiveHookState<T> createState() => _UseResponsiveHookState(
      largeDesktop: largeDesktopValue,
      phone: phone,
      tablet: tablet,
      desktop: desktop,
      );
}

class _UseResponsiveHookState<T> extends HookState<T?, UseResponsiveHook<T>> {
  T? largeDesktop;
  T? phone, tablet, desktop;

  _UseResponsiveHookState(
      {required this.largeDesktop,
        this.phone,
        this.tablet,
        this.desktop,
        });

  @override
  T? build(BuildContext context) {
    var deviceScreenType = context.media;
    if (deviceScreenType.name == Media.DESKTOP.name) {
      if (desktop != null){
        return desktop == Responsive.nullValue ? null : desktop;
      }
    }
    if (deviceScreenType.name == Media.TABLET.name) {
        if (tablet != null){
          return tablet == Responsive.nullValue ? null : tablet;
        }
        if (desktop != null){
          return desktop == Responsive.nullValue ? null : desktop;
        }
    }
    if (deviceScreenType.name == Media.PHONE.name) {
          if (phone != null){
          return phone == Responsive.nullValue ? null : phone;
          }
          if (tablet != null){
            return tablet == Responsive.nullValue ? null : tablet;
          }
          if (desktop != null){
            return desktop == Responsive.nullValue ? null : desktop;
          }
    }
    return largeDesktop == Responsive.nullValue ? null : largeDesktop;
  }
}

enum Responsive{
  nullValue
}

extension BreakPointsExtension on Media{
  double get breakpoint {
    switch(this){
      case Media.PHONE:
        return 567;
      case Media.TABLET:
        return 600;
      case Media.DESKTOP:
        return 992;
      case Media.LARGE_DESKTOP:
        return 1170;
      case Media.TOO_LARGE_DESKTOP:
        return 2559;
    }
  }
}