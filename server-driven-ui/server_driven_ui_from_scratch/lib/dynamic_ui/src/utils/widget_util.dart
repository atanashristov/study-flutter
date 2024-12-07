import 'package:flutter/material.dart';

import '../../dynamic_ui.dart';

class WidgetUtil {
  ///Returns the [Alignment] from string.
  static Alignment? getPositionalAlignment(String? alignment) {
    if (alignment != null && alignment.isNotEmpty) {
      switch (alignment) {
        case Strings.center:
          return Alignment.center;
        case Strings.centerLeft:
          return Alignment.centerLeft;
        case Strings.centerRight:
          return Alignment.centerRight;
        case Strings.topCenter:
          return Alignment.topCenter;
        case Strings.bottomCenter:
          return Alignment.bottomCenter;
      }
    }
    return null;
  }

  ///Returns the [MainAxisAlignment] from string.
  static MainAxisAlignment? getMainAxisAlignment(String? mainAxisAlignment) {
    if (mainAxisAlignment != null && mainAxisAlignment.isNotEmpty) {
      switch (mainAxisAlignment) {
        case Strings.center:
          return MainAxisAlignment.center;
        case Strings.start:
          return MainAxisAlignment.start;
        case Strings.end:
          return MainAxisAlignment.end;
        case Strings.spaceBetween:
          return MainAxisAlignment.spaceBetween;
        case Strings.spaceAround:
          return MainAxisAlignment.spaceAround;
        case Strings.spaceEvenly:
          return MainAxisAlignment.spaceEvenly;
      }
    }
    return null;
  }

  ///Returns the [CrossAxisAlignment] from string.
  static CrossAxisAlignment? getCrossAxisAlignment(String? crossAxisAlignment) {
    if (crossAxisAlignment != null && crossAxisAlignment.isNotEmpty) {
      switch (crossAxisAlignment) {
        case Strings.center:
          return CrossAxisAlignment.center;
        case Strings.start:
          return CrossAxisAlignment.start;
        case Strings.end:
          return CrossAxisAlignment.end;
        case Strings.stretch:
          return CrossAxisAlignment.stretch;
      }
    }
    return null;
  }

  ///Returns the [Color] from string.
  static Color? getColor(String? color) {
    if (color != null) {
      return Color(int.parse(color));
    }
    return null;
  }

  ///Returns the [FontWeight] from string.
  static FontWeight? getFontWeight(String? weight) {
    if (weight == null || weight.isEmpty) {
      return null;
    }
    switch (weight.toLowerCase()) {
      case Strings.light:
        return FontWeight.w300;
      case Strings.regular:
        return FontWeight.w400;
      case Strings.medium:
        return FontWeight.w500;
      case Strings.semibold:
        return FontWeight.w600;
      case Strings.bold:
        return FontWeight.w700;
      default:
        return null;
    }
  }

  ///Returns the [TextOverflow] from string.
  static TextOverflow getTextOverflow(String? overflow) {
    if (overflow == null || overflow.isEmpty) {
      return TextOverflow.ellipsis;
    }
    switch (overflow.toLowerCase()) {
      case Strings.clip:
        return TextOverflow.clip;
      case Strings.fade:
        return TextOverflow.fade;
      case Strings.visible:
        return TextOverflow.visible;
      case Strings.ellipsis:
        return TextOverflow.ellipsis;
      default:
        return TextOverflow.ellipsis;
    }
  }

  ///Returns the [FontStyle] from string.
  static FontStyle? getFontStyle(String? style) {
    if (style == null || style.isEmpty) {
      return null;
    }
    switch (style.toLowerCase()) {
      case Strings.normal:
        return FontStyle.normal;
      case Strings.italic:
        return FontStyle.italic;
      default:
        return null;
    }
  }

  ///Returns the [TextStyle] from string.
  static TextStyle? getTextStyleFromDTO(TextStyleDTO? textStyleDTO) {
    if (textStyleDTO == null) {
      return null;
    }
    return TextStyle(
        color: textStyleDTO.color,
        backgroundColor: textStyleDTO.backgroundColor,
        fontSize: textStyleDTO.fontSize,
        fontWeight: textStyleDTO.fontWeight,
        overflow: textStyleDTO.textOverflow,
        fontStyle: textStyleDTO.fontStyle);
  }
}
