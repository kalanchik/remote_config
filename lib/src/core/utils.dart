import 'dart:ui';

class ModuleUtils {
  ModuleUtils._();

  static Color hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }

    int colorValue = int.parse(hexColor, radix: 16);

    return Color(colorValue);
  }
}
