import 'package:formz/formz.dart';
import 'package:strings/strings.dart';
import 'package:styled_background/app/app.dart';

enum ImagePositionXInputValidationError {
  invalid,
  empty,
  ;

  String text() {
    switch (this) {
      case ImagePositionXInputValidationError.invalid:
        return '''One of left, center, right, Npx, N%, -Npx, -N% please...''';
      case ImagePositionXInputValidationError.empty:
        return '''One of left, center, right, Npx, N%, -Npx, -N%''';
    }
  }
}

class ImagePositionXInput extends FormzInput<String, ImagePositionXInputValidationError>
    with FormzInputErrorCacheMixin {
  ImagePositionXInput.pure([String? initialValue]) : super.pure(initialValue ?? StyledBackgroundConstants.imagePosX);

  ImagePositionXInput.dirty([super.value = '']) : super.dirty();

  static final _regExp = [
    RegExp('(left|center|right)'),
    RegExp(r'\d+(px|%)'),
  ];

  @override
  ImagePositionXInputValidationError? validator(String value) {
    if (value.isBlank()) {
      return ImagePositionXInputValidationError.empty;
    } else if (!(_regExp.any((x) => x.hasMatch(value)))) {
      return ImagePositionXInputValidationError.invalid;
    }

    return null;
  }
}
