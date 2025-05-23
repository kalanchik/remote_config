import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/utils.dart';

class StringToColorConverter implements JsonConverter<Color, String> {
  const StringToColorConverter();

  @override
  Color fromJson(String json) => ModuleUtils.hexToColor(json);

  @override
  String toJson(Color object) => colorToHex(object.r, object.g, object.b);

  String colorToHex(double red, double green, double blue) {
    int r = (red.clamp(0.0, 1.0) * 255).round();
    int g = (green.clamp(0.0, 1.0) * 255).round();
    int b = (blue.clamp(0.0, 1.0) * 255).round();

    return '#'
            '${r.toRadixString(16).padLeft(2, '0')}'
            '${g.toRadixString(16).padLeft(2, '0')}'
            '${b.toRadixString(16).padLeft(2, '0')}'
        .toUpperCase();
  }
}
