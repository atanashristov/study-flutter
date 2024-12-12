import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ColorIntConverter implements JsonConverter<Color, int> {
  const ColorIntConverter();
  static Color defaultColor = const Color.fromRGBO(255, 255, 255, 0);

  @override
  Color fromJson(int? json) => json == null ? defaultColor : Color(json);

  @override
  int toJson(Color? object) => object == null ? defaultColor.value : object.value;
}
