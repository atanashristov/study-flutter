import 'package:formz/formz.dart';
import 'package:strings/strings.dart';

enum ImageOffsetInputValidationError {
  invalid,
  empty,
  ;

  String text() {
    switch (this) {
      case ImageOffsetInputValidationError.invalid:
        return '''Npx please...''';
      case ImageOffsetInputValidationError.empty:
        return '''Please enter offset Npx''';
    }
  }
}

class ImageOffsetInput extends FormzInput<String, ImageOffsetInputValidationError> with FormzInputErrorCacheMixin {
  ImageOffsetInput.pure([String? initialValue]) : super.pure(initialValue ?? '0px');

  ImageOffsetInput.dirty([super.value = '']) : super.dirty();

  static final _regExp = [
    RegExp(r'\d+px'),
  ];

  @override
  ImageOffsetInputValidationError? validator(String value) {
    if (!value.isBlank() && !(_regExp.any((x) => x.hasMatch(value)))) {
      return ImageOffsetInputValidationError.invalid;
    }

    return null;
  }
}
