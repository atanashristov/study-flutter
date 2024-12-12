// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'styled_background_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StyledBackgroundConfig {
  /// Controls the background color of the page
// @ColorIntConverter()
  Color? get bgColor => throw _privateConstructorUsedError;

  /// Url or path to file location:
  ///  - 'assets/images/BackgroundImage1.png'
  ///  - 'assets/images/BackgroundImage2.png'
  String? get bgImageFileName => throw _privateConstructorUsedError;

  /// Controls the opacity. Should be between 0 and 1
  double get bgImageOpacity => throw _privateConstructorUsedError;

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
  String get bgImageSize => throw _privateConstructorUsedError;

  /// Controls the horizontal position of the background image.
  ///
  /// It contains "left", "center", "right", or custom ("Npx", "N%")
  String get bgImagePosX => throw _privateConstructorUsedError;

  /// Controls the vertical position of the background image.
  ///
  /// It contains "top", "center", "bottom", or custom ("Npx", "N%")
  String get bgImagePosY => throw _privateConstructorUsedError;

  /// Adds positive of negative horizontal offset to the background image position.
  ///
  /// It contains "Npx" value
  String get bgImageXOffset => throw _privateConstructorUsedError;

  /// Adds positive of negative vertical offset to the background image position.
  ///
  /// It contains "Npx" value
  String get bgImageYOffset => throw _privateConstructorUsedError;

  /// Create a copy of StyledBackgroundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StyledBackgroundConfigCopyWith<StyledBackgroundConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyledBackgroundConfigCopyWith<$Res> {
  factory $StyledBackgroundConfigCopyWith(StyledBackgroundConfig value,
          $Res Function(StyledBackgroundConfig) then) =
      _$StyledBackgroundConfigCopyWithImpl<$Res, StyledBackgroundConfig>;
  @useResult
  $Res call(
      {Color? bgColor,
      String? bgImageFileName,
      double bgImageOpacity,
      String bgImageSize,
      String bgImagePosX,
      String bgImagePosY,
      String bgImageXOffset,
      String bgImageYOffset});
}

/// @nodoc
class _$StyledBackgroundConfigCopyWithImpl<$Res,
        $Val extends StyledBackgroundConfig>
    implements $StyledBackgroundConfigCopyWith<$Res> {
  _$StyledBackgroundConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StyledBackgroundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = freezed,
    Object? bgImageFileName = freezed,
    Object? bgImageOpacity = null,
    Object? bgImageSize = null,
    Object? bgImagePosX = null,
    Object? bgImagePosY = null,
    Object? bgImageXOffset = null,
    Object? bgImageYOffset = null,
  }) {
    return _then(_value.copyWith(
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      bgImageFileName: freezed == bgImageFileName
          ? _value.bgImageFileName
          : bgImageFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      bgImageOpacity: null == bgImageOpacity
          ? _value.bgImageOpacity
          : bgImageOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      bgImageSize: null == bgImageSize
          ? _value.bgImageSize
          : bgImageSize // ignore: cast_nullable_to_non_nullable
              as String,
      bgImagePosX: null == bgImagePosX
          ? _value.bgImagePosX
          : bgImagePosX // ignore: cast_nullable_to_non_nullable
              as String,
      bgImagePosY: null == bgImagePosY
          ? _value.bgImagePosY
          : bgImagePosY // ignore: cast_nullable_to_non_nullable
              as String,
      bgImageXOffset: null == bgImageXOffset
          ? _value.bgImageXOffset
          : bgImageXOffset // ignore: cast_nullable_to_non_nullable
              as String,
      bgImageYOffset: null == bgImageYOffset
          ? _value.bgImageYOffset
          : bgImageYOffset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StyledBackgroundConfigImplCopyWith<$Res>
    implements $StyledBackgroundConfigCopyWith<$Res> {
  factory _$$StyledBackgroundConfigImplCopyWith(
          _$StyledBackgroundConfigImpl value,
          $Res Function(_$StyledBackgroundConfigImpl) then) =
      __$$StyledBackgroundConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color? bgColor,
      String? bgImageFileName,
      double bgImageOpacity,
      String bgImageSize,
      String bgImagePosX,
      String bgImagePosY,
      String bgImageXOffset,
      String bgImageYOffset});
}

/// @nodoc
class __$$StyledBackgroundConfigImplCopyWithImpl<$Res>
    extends _$StyledBackgroundConfigCopyWithImpl<$Res,
        _$StyledBackgroundConfigImpl>
    implements _$$StyledBackgroundConfigImplCopyWith<$Res> {
  __$$StyledBackgroundConfigImplCopyWithImpl(
      _$StyledBackgroundConfigImpl _value,
      $Res Function(_$StyledBackgroundConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of StyledBackgroundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = freezed,
    Object? bgImageFileName = freezed,
    Object? bgImageOpacity = null,
    Object? bgImageSize = null,
    Object? bgImagePosX = null,
    Object? bgImagePosY = null,
    Object? bgImageXOffset = null,
    Object? bgImageYOffset = null,
  }) {
    return _then(_$StyledBackgroundConfigImpl(
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      bgImageFileName: freezed == bgImageFileName
          ? _value.bgImageFileName
          : bgImageFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      bgImageOpacity: null == bgImageOpacity
          ? _value.bgImageOpacity
          : bgImageOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      bgImageSize: null == bgImageSize
          ? _value.bgImageSize
          : bgImageSize // ignore: cast_nullable_to_non_nullable
              as String,
      bgImagePosX: null == bgImagePosX
          ? _value.bgImagePosX
          : bgImagePosX // ignore: cast_nullable_to_non_nullable
              as String,
      bgImagePosY: null == bgImagePosY
          ? _value.bgImagePosY
          : bgImagePosY // ignore: cast_nullable_to_non_nullable
              as String,
      bgImageXOffset: null == bgImageXOffset
          ? _value.bgImageXOffset
          : bgImageXOffset // ignore: cast_nullable_to_non_nullable
              as String,
      bgImageYOffset: null == bgImageYOffset
          ? _value.bgImageYOffset
          : bgImageYOffset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StyledBackgroundConfigImpl implements _StyledBackgroundConfig {
  const _$StyledBackgroundConfigImpl(
      {this.bgColor,
      this.bgImageFileName,
      this.bgImageOpacity = 0.0,
      this.bgImageSize = 'contain',
      this.bgImagePosX = 'center',
      this.bgImagePosY = 'bottom',
      this.bgImageXOffset = '',
      this.bgImageYOffset = ''});

  /// Controls the background color of the page
// @ColorIntConverter()
  @override
  final Color? bgColor;

  /// Url or path to file location:
  ///  - 'assets/images/BackgroundImage1.png'
  ///  - 'assets/images/BackgroundImage2.png'
  @override
  final String? bgImageFileName;

  /// Controls the opacity. Should be between 0 and 1
  @override
  @JsonKey()
  final double bgImageOpacity;

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
  @override
  @JsonKey()
  final String bgImageSize;

  /// Controls the horizontal position of the background image.
  ///
  /// It contains "left", "center", "right", or custom ("Npx", "N%")
  @override
  @JsonKey()
  final String bgImagePosX;

  /// Controls the vertical position of the background image.
  ///
  /// It contains "top", "center", "bottom", or custom ("Npx", "N%")
  @override
  @JsonKey()
  final String bgImagePosY;

  /// Adds positive of negative horizontal offset to the background image position.
  ///
  /// It contains "Npx" value
  @override
  @JsonKey()
  final String bgImageXOffset;

  /// Adds positive of negative vertical offset to the background image position.
  ///
  /// It contains "Npx" value
  @override
  @JsonKey()
  final String bgImageYOffset;

  @override
  String toString() {
    return 'StyledBackgroundConfig(bgColor: $bgColor, bgImageFileName: $bgImageFileName, bgImageOpacity: $bgImageOpacity, bgImageSize: $bgImageSize, bgImagePosX: $bgImagePosX, bgImagePosY: $bgImagePosY, bgImageXOffset: $bgImageXOffset, bgImageYOffset: $bgImageYOffset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyledBackgroundConfigImpl &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.bgImageFileName, bgImageFileName) ||
                other.bgImageFileName == bgImageFileName) &&
            (identical(other.bgImageOpacity, bgImageOpacity) ||
                other.bgImageOpacity == bgImageOpacity) &&
            (identical(other.bgImageSize, bgImageSize) ||
                other.bgImageSize == bgImageSize) &&
            (identical(other.bgImagePosX, bgImagePosX) ||
                other.bgImagePosX == bgImagePosX) &&
            (identical(other.bgImagePosY, bgImagePosY) ||
                other.bgImagePosY == bgImagePosY) &&
            (identical(other.bgImageXOffset, bgImageXOffset) ||
                other.bgImageXOffset == bgImageXOffset) &&
            (identical(other.bgImageYOffset, bgImageYOffset) ||
                other.bgImageYOffset == bgImageYOffset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bgColor,
      bgImageFileName,
      bgImageOpacity,
      bgImageSize,
      bgImagePosX,
      bgImagePosY,
      bgImageXOffset,
      bgImageYOffset);

  /// Create a copy of StyledBackgroundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StyledBackgroundConfigImplCopyWith<_$StyledBackgroundConfigImpl>
      get copyWith => __$$StyledBackgroundConfigImplCopyWithImpl<
          _$StyledBackgroundConfigImpl>(this, _$identity);
}

abstract class _StyledBackgroundConfig implements StyledBackgroundConfig {
  const factory _StyledBackgroundConfig(
      {final Color? bgColor,
      final String? bgImageFileName,
      final double bgImageOpacity,
      final String bgImageSize,
      final String bgImagePosX,
      final String bgImagePosY,
      final String bgImageXOffset,
      final String bgImageYOffset}) = _$StyledBackgroundConfigImpl;

  /// Controls the background color of the page
// @ColorIntConverter()
  @override
  Color? get bgColor;

  /// Url or path to file location:
  ///  - 'assets/images/BackgroundImage1.png'
  ///  - 'assets/images/BackgroundImage2.png'
  @override
  String? get bgImageFileName;

  /// Controls the opacity. Should be between 0 and 1
  @override
  double get bgImageOpacity;

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
  @override
  String get bgImageSize;

  /// Controls the horizontal position of the background image.
  ///
  /// It contains "left", "center", "right", or custom ("Npx", "N%")
  @override
  String get bgImagePosX;

  /// Controls the vertical position of the background image.
  ///
  /// It contains "top", "center", "bottom", or custom ("Npx", "N%")
  @override
  String get bgImagePosY;

  /// Adds positive of negative horizontal offset to the background image position.
  ///
  /// It contains "Npx" value
  @override
  String get bgImageXOffset;

  /// Adds positive of negative vertical offset to the background image position.
  ///
  /// It contains "Npx" value
  @override
  String get bgImageYOffset;

  /// Create a copy of StyledBackgroundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StyledBackgroundConfigImplCopyWith<_$StyledBackgroundConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}
