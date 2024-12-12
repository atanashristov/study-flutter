import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:styled_background/styled_background/styled_background.dart';

part 'styled_background_widget_model.freezed.dart';

@freezed
class StyledBackgroundWidgetModel with _$StyledBackgroundWidgetModel {
  const factory StyledBackgroundWidgetModel({
    /// Controls the background color of the page
    Color? bgColor,

    /// Background image information
    StyledBackgroundImageModel? bgImage,
  }) = _StyledBackgroundWidgetModel;
}
