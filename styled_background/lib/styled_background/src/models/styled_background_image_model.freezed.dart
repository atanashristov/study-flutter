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
  ///  - 'assets/images/MobileBackgroundImage-120x58.png'
  ///  - 'assets/images/MobileBackgroundImage-566x270.png'
  String get fileName => throw _privateConstructorUsedError;

  /// Opacity of the background image
  double get opacity => throw _privateConstructorUsedError;

  /// Alignment of the background image
  AlignmentGeometry? get alignment => throw _privateConstructorUsedError;

  /// BoxFit of the background image
  BoxFit? get fit => throw _privateConstructorUsedError;

  /// Size of the  background image
  StyledBackgroundImageSizeModel? get size =>
      throw _privateConstructorUsedError;

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
      AlignmentGeometry? alignment,
      BoxFit? fit,
      StyledBackgroundImageSizeModel? size});

  $StyledBackgroundImageSizeModelCopyWith<$Res>? get size;
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
    Object? size = freezed,
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
              as AlignmentGeometry?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as StyledBackgroundImageSizeModel?,
    ) as $Val);
  }

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StyledBackgroundImageSizeModelCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $StyledBackgroundImageSizeModelCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
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
      AlignmentGeometry? alignment,
      BoxFit? fit,
      StyledBackgroundImageSizeModel? size});

  @override
  $StyledBackgroundImageSizeModelCopyWith<$Res>? get size;
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
    Object? size = freezed,
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
              as AlignmentGeometry?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as StyledBackgroundImageSizeModel?,
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
      this.size});

  /// Url or path to file location:
  ///  - 'assets/images/MobileBackgroundImage-120x58.png'
  ///  - 'assets/images/MobileBackgroundImage-566x270.png'
  @override
  final String fileName;

  /// Opacity of the background image
  @override
  @JsonKey()
  final double opacity;

  /// Alignment of the background image
  @override
  final AlignmentGeometry? alignment;

  /// BoxFit of the background image
  @override
  final BoxFit? fit;

  /// Size of the  background image
  @override
  final StyledBackgroundImageSizeModel? size;

  @override
  String toString() {
    return 'StyledBackgroundImageModel(fileName: $fileName, opacity: $opacity, alignment: $alignment, fit: $fit, size: $size)';
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
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fileName, opacity, alignment, fit, size);

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
          final AlignmentGeometry? alignment,
          final BoxFit? fit,
          final StyledBackgroundImageSizeModel? size}) =
      _$StyledBackgroundImageModelImpl;

  /// Url or path to file location:
  ///  - 'assets/images/MobileBackgroundImage-120x58.png'
  ///  - 'assets/images/MobileBackgroundImage-566x270.png'
  @override
  String get fileName;

  /// Opacity of the background image
  @override
  double get opacity;

  /// Alignment of the background image
  @override
  AlignmentGeometry? get alignment;

  /// BoxFit of the background image
  @override
  BoxFit? get fit;

  /// Size of the  background image
  @override
  StyledBackgroundImageSizeModel? get size;

  /// Create a copy of StyledBackgroundImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StyledBackgroundImageModelImplCopyWith<_$StyledBackgroundImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
