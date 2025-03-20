import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'package:remote_config/src/core/utils.dart';

class StringToColorConverter implements JsonConverter<Color, String> {
  const StringToColorConverter();

  @override
  Color fromJson(String json) => ModuleUtils.hexToColor(json);

  @override
  String toJson(Color object) => object.toString();
}
