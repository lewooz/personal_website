import 'dart:ui';

class AppColors {
  static const PRIMARY_COLOR = Color(0xFF1F4988);
  static const SECONDARY_COLOR = Color(0xFF9DC5BB);

  static const BG_WHITE = Color(0xFFF7F6FB);
  static const GREY = Color(0xFF303030);

  static Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
  static String colorToHex(Color color) {
    String newColor= color.value.toRadixString(16);
    String hashTag = "#";
    newColor = hashTag + newColor.substring(2);
    return newColor;
  }
}