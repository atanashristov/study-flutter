import 'package:freezed_annotation/freezed_annotation.dart';

part 'styled_background_image_size_model.freezed.dart';

@freezed
class StyledBackgroundImageSizeModel with _$StyledBackgroundImageSizeModel {
  const factory StyledBackgroundImageSizeModel({
    /// If non-null, the height of the image
    double? height,

    /// If non-null, the width of the image
    double? width,

    /// If non-null, the fraction of the incoming height given to the child.
    double? heightFactor,

    /// If non-null, the fraction of the incoming width given to the child.
    double? widthFactor,
  }) = _StyledBackgroundImageSizeModel;
}
