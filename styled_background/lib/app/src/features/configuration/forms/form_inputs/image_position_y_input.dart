import 'package:formz/formz.dart';
import 'package:strings/strings.dart';
import 'package:styled_background/app/app.dart';

enum ImagePositionYInputValidationError {
  invalid,
  empty,
  ;

  String text() {
    switch (this) {
      case ImagePositionYInputValidationError.invalid:
        return '''One of top, center, bottom, Npx, N%, -Npx, -N% please...''';
      case ImagePositionYInputValidationError.empty:
        return '''One of top, center, bottom, Npx, N%, -Npx, -N%''';
    }
  }
}

class ImagePositionYInput extends FormzInput<String, ImagePositionYInputValidationError>
    with FormzInputErrorCacheMixin {
  ImagePositionYInput.pure([String? initialValue]) : super.pure(initialValue ?? StyledBackgroundConstants.imagePosX);

  ImagePositionYInput.dirty([super.value = '']) : super.dirty();

  static final _regExp = [
    RegExp('(top|center|bottom)'),
    RegExp(r'\d+(px|%)'),
  ];

  @override
  ImagePositionYInputValidationError? validator(String value) {
    if (value.isBlank()) {
      return ImagePositionYInputValidationError.empty;
    } else if (!(_regExp.any((x) => x.hasMatch(value)))) {
      return ImagePositionYInputValidationError.invalid;
    }

    return null;
  }
}
