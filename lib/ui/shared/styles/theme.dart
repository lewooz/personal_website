import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/init/theme_manager/theme_manager.dart';

class ThemeStyle {
  final Ref ref;

  ThemeStyle(this.ref);

  ThemeData get appTheme => customThemeData();

  ThemeData customThemeData() {
    final themeManager = ref.watch(themeProvider);


    return ThemeData(
      primaryColor: themeManager.primaryColor,
      primaryColorLight: themeManager.primaryColor,
      primaryColorDark: themeManager.primaryColor,
      scaffoldBackgroundColor: themeManager.bgWhite,
      textTheme: GoogleFonts.ralewayTextTheme(),
      tooltipTheme: TooltipThemeData(decoration: BoxDecoration(color: themeManager.secondaryColor))
    );
  }
}

final themeStyleProvider = Provider((ref) => ThemeStyle(ref));
