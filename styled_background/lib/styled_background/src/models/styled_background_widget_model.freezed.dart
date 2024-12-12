// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'styled_background_widget_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StyledBackgroundWidgetModel {
  /// Controls the background color of the page
  Color? get bgColor => throw _privateConstructorUsedError;

  /// Background image information
  StyledBackgroundImageModel? get bgImage => throw _privateConstructorUsedError;

  /// Create a copy of StyledBackgroundWidgetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StyledBackgroundWidgetModelCopyWith<StyledBackgroundWidgetModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyledBackgroundWidgetModelCopyWith<$Res> {
  factory $StyledBackgroundWidgetModelCopyWith(
          StyledBackgroundWidgetModel value,
          $Res Function(StyledBackgroundWidgetModel) then) =
      _$StyledBackgroundWidgetModelCopyWithImpl<$Res,
          StyledBackgroundWidgetModel>;
  @useResult
  $Res call({Color? bgColor, StyledBackgroundImageModel? bgImage});

  $StyledBackgroundImageModelCopyWith<$Res>? get bgImage;
}

/// @nodoc
class _$StyledBackgroundWidgetModelCopyWithImpl<$Res,
        $Val extends StyledBackgroundWidgetModel>
    implements $StyledBackgroundWidgetModelCopyWith<$Res> {
  _$StyledBackgroundWidgetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StyledBackgroundWidgetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = freezed,
    Object? bgImage = freezed,
  }) {
    return _then(_value.copyWith(
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      bgImage: freezed == bgImage
          ? _value.bgImage
          : bgImage // ignore: cast_nullable_to_non_nullable
              as StyledBackgroundImageModel?,
    ) as $Val);
  }

  /// Create a copy of StyledBackgroundWidgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StyledBackgroundImageModelCopyWith<$Res>? get bgImage {
    if (_value.bgImage == null) {
      return null;
    }

    return $StyledBackgroundImageModelCopyWith<$Res>(_value.bgImage!, (value) {
      return _then(_value.copyWith(bgImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StyledBackgroundWidgetModelImplCopyWith<$Res>
    implements $StyledBackgroundWidgetModelCopyWith<$Res> {
  factory _$$StyledBackgroundWidgetModelImplCopyWith(
          _$StyledBackgroundWidgetModelImpl value,
          $Res Function(_$StyledBackgroundWidgetModelImpl) then) =
      __$$StyledBackgroundWidgetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color? bgColor, StyledBackgroundImageModel? bgImage});

  @override
  $StyledBackgroundImageModelCopyWith<$Res>? get bgImage;
}

/// @nodoc
class __$$StyledBackgroundWidgetModelImplCopyWithImpl<$Res>
    extends _$StyledBackgroundWidgetModelCopyWithImpl<$Res,
        _$StyledBackgroundWidgetModelImpl>
    implements _$$StyledBackgroundWidgetModelImplCopyWith<$Res> {
  __$$StyledBackgroundWidgetModelImplCopyWithImpl(
      _$StyledBackgroundWidgetModelImpl _value,
      $Res Function(_$StyledBackgroundWidgetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StyledBackgroundWidgetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgColor = freezed,
    Object? bgImage = freezed,
  }) {
    return _then(_$StyledBackgroundWidgetModelImpl(
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      bgImage: freezed == bgImage
          ? _value.bgImage
          : bgImage // ignore: cast_nullable_to_non_nullable
              as StyledBackgroundImageModel?,
    ));
  }
}

/// @nodoc

class _$StyledBackgroundWidgetModelImpl
    implements _StyledBackgroundWidgetModel {
  const _$StyledBackgroundWidgetModelImpl({this.bgColor, this.bgImage});

  /// Controls the background color of the page
  @override
  final Color? bgColor;

  /// Background image information
  @override
  final StyledBackgroundImageModel? bgImage;

  @override
  String toString() {
    return 'StyledBackgroundWidgetModel(bgColor: $bgColor, bgImage: $bgImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyledBackgroundWidgetModelImpl &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.bgImage, bgImage) || other.bgImage == bgImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bgColor, bgImage);

  /// Create a copy of StyledBackgroundWidgetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StyledBackgroundWidgetModelImplCopyWith<_$StyledBackgroundWidgetModelImpl>
      get copyWith => __$$StyledBackgroundWidgetModelImplCopyWithImpl<
          _$StyledBackgroundWidgetModelImpl>(this, _$identity);
}

abstract class _StyledBackgroundWidgetModel
    implements StyledBackgroundWidgetModel {
  const factory _StyledBackgroundWidgetModel(
          {final Color? bgColor, final StyledBackgroundImageModel? bgImage}) =
      _$StyledBackgroundWidgetModelImpl;

  /// Controls the background color of the page
  @override
  Color? get bgColor;

  /// Background image information
  @override
  StyledBackgroundImageModel? get bgImage;

  /// Create a copy of StyledBackgroundWidgetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StyledBackgroundWidgetModelImplCopyWith<_$StyledBackgroundWidgetModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
