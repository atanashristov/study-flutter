import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:styled_background/styled_background/styled_background.dart';

part 'styled_background_image_model.freezed.dart';

@freezed
class StyledBackgroundImageModel with _$StyledBackgroundImageModel {
  const factory StyledBackgroundImageModel({
    /// Url or path to file location:
    ///  - 'assets/images/MobileBackgroundImage-120x58.png'
    ///  - 'assets/images/MobileBackgroundImage-566x270.png'
    required String fileName,

    /// Opacity of the background image
    @Default(1.0) double opacity,

    /// Alignment of the background image
    AlignmentGeometry? alignment,

    /// BoxFit of the background image
    BoxFit? fit,

    /// Size of the  background image
    StyledBackgroundImageSizeModel? size,
  }) = _StyledBackgroundImageModel;
}
