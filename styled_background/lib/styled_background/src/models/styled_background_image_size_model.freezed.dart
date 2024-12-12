// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'styled_background_image_size_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StyledBackgroundImageSizeModel {
  /// If non-null, the height of the image
  double? get height => throw _privateConstructorUsedError;

  /// If non-null, the width of the image
  double? get width => throw _privateConstructorUsedError;

  /// If non-null, the fraction of the incoming height given to the child.
  double? get heightFactor => throw _privateConstructorUsedError;

  /// If non-null, the fraction of the incoming width given to the child.
  double? get widthFactor => throw _privateConstructorUsedError;

  /// Create a copy of StyledBackgroundImageSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StyledBackgroundImageSizeModelCopyWith<StyledBackgroundImageSizeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyledBackgroundImageSizeModelCopyWith<$Res> {
  factory $StyledBackgroundImageSizeModelCopyWith(
          StyledBackgroundImageSizeModel value,
          $Res Function(StyledBackgroundImageSizeModel) then) =
      _$StyledBackgroundImageSizeModelCopyWithImpl<$Res,
          StyledBackgroundImageSizeModel>;
  @useResult
  $Res call(
      {double? height,
      double? width,
      double? heightFactor,
      double? widthFactor});
}

/// @nodoc
class _$StyledBackgroundImageSizeModelCopyWithImpl<$Res,
        $Val extends StyledBackgroundImageSizeModel>
    implements $StyledBackgroundImageSizeModelCopyWith<$Res> {
  _$StyledBackgroundImageSizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StyledBackgroundImageSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? heightFactor = freezed,
    Object? widthFactor = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StyledBackgroundImageSizeModelImplCopyWith<$Res>
    implements $StyledBackgroundImageSizeModelCopyWith<$Res> {
  factory _$$StyledBackgroundImageSizeModelImplCopyWith(
          _$StyledBackgroundImageSizeModelImpl value,
          $Res Function(_$StyledBackgroundImageSizeModelImpl) then) =
      __$$StyledBackgroundImageSizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? height,
      double? width,
      double? heightFactor,
      double? widthFactor});
}

/// @nodoc
class __$$StyledBackgroundImageSizeModelImplCopyWithImpl<$Res>
    extends _$StyledBackgroundImageSizeModelCopyWithImpl<$Res,
        _$StyledBackgroundImageSizeModelImpl>
    implements _$$StyledBackgroundImageSizeModelImplCopyWith<$Res> {
  __$$StyledBackgroundImageSizeModelImplCopyWithImpl(
      _$StyledBackgroundImageSizeModelImpl _value,
      $Res Function(_$StyledBackgroundImageSizeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StyledBackgroundImageSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? heightFactor = freezed,
    Object? widthFactor = freezed,
  }) {
    return _then(_$StyledBackgroundImageSizeModelImpl(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      heightFactor: freezed == heightFactor
          ? _value.heightFactor
          : heightFactor // ignore: cast_nullable_to_non_nullable
              as double?,
      widthFactor: freezed == widthFactor
          ? _value.widthFactor
          : widthFactor // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$StyledBackgroundImageSizeModelImpl
    implements _StyledBackgroundImageSizeModel {
  const _$StyledBackgroundImageSizeModelImpl(
      {this.height, this.width, this.heightFactor, this.widthFactor});

  /// If non-null, the height of the image
  @override
  final double? height;

  /// If non-null, the width of the image
  @override
  final double? width;

  /// If non-null, the fraction of the incoming height given to the child.
  @override
  final double? heightFactor;

  /// If non-null, the fraction of the incoming width given to the child.
  @override
  final double? widthFactor;

  @override
  String toString() {
    return 'StyledBackgroundImageSizeModel(height: $height, width: $width, heightFactor: $heightFactor, widthFactor: $widthFactor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyledBackgroundImageSizeModelImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, height, width, heightFactor, widthFactor);

  /// Create a copy of StyledBackgroundImageSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StyledBackgroundImageSizeModelImplCopyWith<
          _$StyledBackgroundImageSizeModelImpl>
      get copyWith => __$$StyledBackgroundImageSizeModelImplCopyWithImpl<
          _$StyledBackgroundImageSizeModelImpl>(this, _$identity);
}

abstract class _StyledBackgroundImageSizeModel
    implements StyledBackgroundImageSizeModel {
  const factory _StyledBackgroundImageSizeModel(
      {final double? height,
      final double? width,
      final double? heightFactor,
      final double? widthFactor}) = _$StyledBackgroundImageSizeModelImpl;

  /// If non-null, the height of the image
  @override
  double? get height;

  /// If non-null, the width of the image
  @override
  double? get width;

  /// If non-null, the fraction of the incoming height given to the child.
  @override
  double? get heightFactor;

  /// If non-null, the fraction of the incoming width given to the child.
  @override
  double? get widthFactor;

  /// Create a copy of StyledBackgroundImageSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StyledBackgroundImageSizeModelImplCopyWith<
          _$StyledBackgroundImageSizeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
