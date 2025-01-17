import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'styled_background_image_model.freezed.dart';

@freezed
class StyledBackgroundImageModel with _$StyledBackgroundImageModel {
  const factory StyledBackgroundImageModel({
    /// Url or path to file location. Examples:
    ///  - 'assets/images/BackgroundImage1.png'
    ///  - 'assets/images/BackgroundImage2.png'
    ///  - 'https://reflecthairstudio.com/assets/images/test/BackgroundImage2.png'
    required String fileName,

    /// Opacity of the background image
    @Default(1.0) double opacity,

    /// Alignment of the background image
    Alignment? alignment,

    /// BoxFit of the background image
    BoxFit? fit,

    /// Length size (width, height) of the background image.
    /// If any of these is non-null, then it is width or the height of the image correspondingly.
    /// Negative values are not allowed
    @Default((null, null)) (double?, double?) sizeLength,

    /// Percentage size (width, height) of the background image to the background positioning area.
    /// If any of these is non-null, then it is width or the height percentage of the image correspondingly.
    /// Negative values are not allowed
    @Default((null, null)) (double?, double?) sizePercentage,

    /// Position in pixels (x, y) of the background image inside the background positioning area.
    /// Negative values are allowed
    @Default((null, null)) (double?, double?) positionLength,

    /// Position in percentage (x, y) of the background image inside the background positioning area.
    /// Negative values are allowed
    @Default((null, null)) (double?, double?) positionPercentage,

    /// Offset in pixels (x, y) of the background image inside the background positioning area.
    /// Negative values are allowed.
    @Default((null, null)) (double?, double?) offsetLength,

    /// Offset in percentage (x, y) of the background image inside the background positioning area.
    /// Negative values are allowed.
    @Default((null, null)) (double?, double?) offsetPercentage,
  }) = _StyledBackgroundImageModel;
}
