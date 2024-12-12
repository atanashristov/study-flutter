import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:styled_background/styled_background/styled_background.dart';

// part 'styled_background_config.g.dart';
part 'styled_background_config.freezed.dart';

@freezed
class StyledBackgroundConfig with _$StyledBackgroundConfig {
  const factory StyledBackgroundConfig({
    /// Controls the background color of the page
    // @ColorIntConverter()
    Color? bgColor,

    /// Url or path to file location:
    ///  - 'assets/images/BackgroundImage1.png'
    ///  - 'assets/images/BackgroundImage2.png'
    String? bgImageFileName,

    /// Controls the opacity. Should be between 0 and 1
    @Default(0.0) double bgImageOpacity,

    /// Controls the image size.
    ///
    /// It is "contain", "cover", or custom ("Npx Npx", "N%  N%", "auto auto" and combinations of these).
    ///
    /// CSS values:
    ///
    ///  - "contain" - Scales the image as large as possible within its container
    /// without cropping or stretching the image.
    /// If the container is larger than the image this will result in image tiling,
    /// unless the background-repeat property is set to no-repeat.
    ///
    /// - "cover" - Scales the image (while preserving its ratio) to the smallest possible size
    /// to fill the container (that is: both its height and width completely cover the container),
    /// leaving no empty space. If the proportions of the background differ from the element,
    /// the image is cropped either vertically or horizontally.
    ///
    @Default('contain') String bgImageSize,

    /// Controls the horizontal position of the background image.
    ///
    /// It contains "left", "center", "right", or custom ("Npx", "N%")
    @Default('center') String bgImagePosX,

    /// Controls the vertical position of the background image.
    ///
    /// It contains "top", "center", "bottom", or custom ("Npx", "N%")
    @Default('bottom') String bgImagePosY,

    /// Adds positive of negative horizontal offset to the background image position.
    ///
    /// It contains "Npx" value
    @Default('') String bgImageXOffset,

    /// Adds positive of negative vertical offset to the background image position.
    ///
    /// It contains "Npx" value
    @Default('') String bgImageYOffset,
  }) = _StyledBackgroundConfig;

  // factory StyledBackgroundConfig.fromJson(Map<String, dynamic> json) => _$StyledBackgroundConfigFromJson(json);
}
