// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'styled_background_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StyledBackgroundImageModel {
  /// Url or path to file location:
  ///  - 'assets/images/BackgroundImage1.png'
  ///  - 'assets/images/BackgroundImage2.png'
  ///  - 'https://reflecthairstudio.com/assets/images/test/BackgroundImage2.png'
  String get fileName => throw _privateConstructorUsedError;

  /// Opacity of the background image
  double get opacity => throw _privateConstructorUsedError;

  /// Alignment of the background image
  Alignment? get alignment => throw _privateConstructorUsedError;

  /// BoxFit of the background image
  BoxFit? get fit => throw _privateConstructorUsedError;

  /// Length size (width, height) of the background image.
  /// If any of these is non-null, then it is width or the height of the image correspondingly.
  /// Negative values are not allowed.
  (double?, double?) get sizeLength => throw _privateConstructorUsedError;

  /// Percentage size (width, height) of the background image to the background positioning area.
  /// If any of these is non-null, then it is width or the height percentage of the image correspondingly.
  /// Negative values are not allowed.
  (double?, double?) get sizePercentage => throw _privateConstructorUsedError;

  /// Position in pixels (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  (double?, double?) get positionLength => throw _privateConstructorUsedError;

  /// Offset position in percentage (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  (double?, double?) get positionPercentage =>
      throw _privateConstructorUsedError;

  /// Position in pixels (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  (double?, double?) get offsetLength => throw _privateConstructorUsedError;

  /// Offset position in percentage (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  (double?, double?) get offsetPercentage => throw _privateConstructorUsedError;

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StyledBackgroundImageModelCopyWith<StyledBackgroundImageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyledBackgroundImageModelCopyWith<$Res> {
  factory $StyledBackgroundImageModelCopyWith(StyledBackgroundImageModel value,
          $Res Function(StyledBackgroundImageModel) then) =
      _$StyledBackgroundImageModelCopyWithImpl<$Res,
          StyledBackgroundImageModel>;
  @useResult
  $Res call(
      {String fileName,
      double opacity,
      Alignment? alignment,
      BoxFit? fit,
      (double?, double?) sizeLength,
      (double?, double?) sizePercentage,
      (double?, double?) positionLength,
      (double?, double?) positionPercentage,
      (double?, double?) offsetLength,
      (double?, double?) offsetPercentage});
}

/// @nodoc
class _$StyledBackgroundImageModelCopyWithImpl<$Res,
        $Val extends StyledBackgroundImageModel>
    implements $StyledBackgroundImageModelCopyWith<$Res> {
  _$StyledBackgroundImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? opacity = null,
    Object? alignment = freezed,
    Object? fit = freezed,
    Object? sizeLength = null,
    Object? sizePercentage = null,
    Object? positionLength = null,
    Object? positionPercentage = null,
    Object? offsetLength = null,
    Object? offsetPercentage = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as Alignment?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      sizeLength: null == sizeLength
          ? _value.sizeLength
          : sizeLength // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      sizePercentage: null == sizePercentage
          ? _value.sizePercentage
          : sizePercentage // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      positionLength: null == positionLength
          ? _value.positionLength
          : positionLength // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      positionPercentage: null == positionPercentage
          ? _value.positionPercentage
          : positionPercentage // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      offsetLength: null == offsetLength
          ? _value.offsetLength
          : offsetLength // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      offsetPercentage: null == offsetPercentage
          ? _value.offsetPercentage
          : offsetPercentage // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StyledBackgroundImageModelImplCopyWith<$Res>
    implements $StyledBackgroundImageModelCopyWith<$Res> {
  factory _$$StyledBackgroundImageModelImplCopyWith(
          _$StyledBackgroundImageModelImpl value,
          $Res Function(_$StyledBackgroundImageModelImpl) then) =
      __$$StyledBackgroundImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileName,
      double opacity,
      Alignment? alignment,
      BoxFit? fit,
      (double?, double?) sizeLength,
      (double?, double?) sizePercentage,
      (double?, double?) positionLength,
      (double?, double?) positionPercentage,
      (double?, double?) offsetLength,
      (double?, double?) offsetPercentage});
}

/// @nodoc
class __$$StyledBackgroundImageModelImplCopyWithImpl<$Res>
    extends _$StyledBackgroundImageModelCopyWithImpl<$Res,
        _$StyledBackgroundImageModelImpl>
    implements _$$StyledBackgroundImageModelImplCopyWith<$Res> {
  __$$StyledBackgroundImageModelImplCopyWithImpl(
      _$StyledBackgroundImageModelImpl _value,
      $Res Function(_$StyledBackgroundImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? opacity = null,
    Object? alignment = freezed,
    Object? fit = freezed,
    Object? sizeLength = null,
    Object? sizePercentage = null,
    Object? positionLength = null,
    Object? positionPercentage = null,
    Object? offsetLength = null,
    Object? offsetPercentage = null,
  }) {
    return _then(_$StyledBackgroundImageModelImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
      alignment: freezed == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as Alignment?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      sizeLength: null == sizeLength
          ? _value.sizeLength
          : sizeLength // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      sizePercentage: null == sizePercentage
          ? _value.sizePercentage
          : sizePercentage // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      positionLength: null == positionLength
          ? _value.positionLength
          : positionLength // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      positionPercentage: null == positionPercentage
          ? _value.positionPercentage
          : positionPercentage // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      offsetLength: null == offsetLength
          ? _value.offsetLength
          : offsetLength // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
      offsetPercentage: null == offsetPercentage
          ? _value.offsetPercentage
          : offsetPercentage // ignore: cast_nullable_to_non_nullable
              as (double?, double?),
    ));
  }
}

/// @nodoc

class _$StyledBackgroundImageModelImpl implements _StyledBackgroundImageModel {
  const _$StyledBackgroundImageModelImpl(
      {required this.fileName,
      this.opacity = 1.0,
      this.alignment,
      this.fit,
      this.sizeLength = const (null, null),
      this.sizePercentage = const (null, null),
      this.positionLength = const (null, null),
      this.positionPercentage = const (null, null),
      this.offsetLength = const (null, null),
      this.offsetPercentage = const (null, null)});

  /// Url or path to file location:
  ///  - 'assets/images/BackgroundImage1.png'
  ///  - 'assets/images/BackgroundImage2.png'
  ///  - 'https://reflecthairstudio.com/assets/images/test/BackgroundImage2.png'
  @override
  final String fileName;

  /// Opacity of the background image
  @override
  @JsonKey()
  final double opacity;

  /// Alignment of the background image
  @override
  final Alignment? alignment;

  /// BoxFit of the background image
  @override
  final BoxFit? fit;

  /// Length size (width, height) of the background image.
  /// If any of these is non-null, then it is width or the height of the image correspondingly.
  /// Negative values are not allowed.
  @override
  @JsonKey()
  final (double?, double?) sizeLength;

  /// Percentage size (width, height) of the background image to the background positioning area.
  /// If any of these is non-null, then it is width or the height percentage of the image correspondingly.
  /// Negative values are not allowed.
  @override
  @JsonKey()
  final (double?, double?) sizePercentage;

  /// Position in pixels (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  @JsonKey()
  final (double?, double?) positionLength;

  /// Offset position in percentage (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  @JsonKey()
  final (double?, double?) positionPercentage;

  /// Position in pixels (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  @JsonKey()
  final (double?, double?) offsetLength;

  /// Offset position in percentage (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  @JsonKey()
  final (double?, double?) offsetPercentage;

  @override
  String toString() {
    return 'StyledBackgroundImageModel(fileName: $fileName, opacity: $opacity, alignment: $alignment, fit: $fit, sizeLength: $sizeLength, sizePercentage: $sizePercentage, positionLength: $positionLength, positionPercentage: $positionPercentage, offsetLength: $offsetLength, offsetPercentage: $offsetPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyledBackgroundImageModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.sizeLength, sizeLength) ||
                other.sizeLength == sizeLength) &&
            (identical(other.sizePercentage, sizePercentage) ||
                other.sizePercentage == sizePercentage) &&
            (identical(other.positionLength, positionLength) ||
                other.positionLength == positionLength) &&
            (identical(other.positionPercentage, positionPercentage) ||
                other.positionPercentage == positionPercentage) &&
            (identical(other.offsetLength, offsetLength) ||
                other.offsetLength == offsetLength) &&
            (identical(other.offsetPercentage, offsetPercentage) ||
                other.offsetPercentage == offsetPercentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fileName,
      opacity,
      alignment,
      fit,
      sizeLength,
      sizePercentage,
      positionLength,
      positionPercentage,
      offsetLength,
      offsetPercentage);

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StyledBackgroundImageModelImplCopyWith<_$StyledBackgroundImageModelImpl>
      get copyWith => __$$StyledBackgroundImageModelImplCopyWithImpl<
          _$StyledBackgroundImageModelImpl>(this, _$identity);
}

abstract class _StyledBackgroundImageModel
    implements StyledBackgroundImageModel {
  const factory _StyledBackgroundImageModel(
          {required final String fileName,
          final double opacity,
          final Alignment? alignment,
          final BoxFit? fit,
          final (double?, double?) sizeLength,
          final (double?, double?) sizePercentage,
          final (double?, double?) positionLength,
          final (double?, double?) positionPercentage,
          final (double?, double?) offsetLength,
          final (double?, double?) offsetPercentage}) =
      _$StyledBackgroundImageModelImpl;

  /// Url or path to file location:
  ///  - 'assets/images/BackgroundImage1.png'
  ///  - 'assets/images/BackgroundImage2.png'
  ///  - 'https://reflecthairstudio.com/assets/images/test/BackgroundImage2.png'
  @override
  String get fileName;

  /// Opacity of the background image
  @override
  double get opacity;

  /// Alignment of the background image
  @override
  Alignment? get alignment;

  /// BoxFit of the background image
  @override
  BoxFit? get fit;

  /// Length size (width, height) of the background image.
  /// If any of these is non-null, then it is width or the height of the image correspondingly.
  /// Negative values are not allowed.
  @override
  (double?, double?) get sizeLength;

  /// Percentage size (width, height) of the background image to the background positioning area.
  /// If any of these is non-null, then it is width or the height percentage of the image correspondingly.
  /// Negative values are not allowed.
  @override
  (double?, double?) get sizePercentage;

  /// Position in pixels (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  (double?, double?) get positionLength;

  /// Offset position in percentage (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  (double?, double?) get positionPercentage;

  /// Position in pixels (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  (double?, double?) get offsetLength;

  /// Offset position in percentage (x, y) of the background image inside the background positioning area.
  /// Negative values are allowed.
  @override
  (double?, double?) get offsetPercentage;

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StyledBackgroundImageModelImplCopyWith<_$StyledBackgroundImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
