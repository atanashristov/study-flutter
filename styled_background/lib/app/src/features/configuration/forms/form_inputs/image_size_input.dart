import 'package:formz/formz.dart';
import 'package:strings/strings.dart';
import 'package:styled_background/app/app.dart';

enum ImageSizeInputValidationError {
  invalid,
  empty,
  ;

  String text() {
    switch (this) {
      case ImageSizeInputValidationError.invalid:
        return '''contain, cover, Npx Npx, N%  N%, auto auto please...''';
      case ImageSizeInputValidationError.empty:
        return '''Please enter contain, cover, Npx Npx, N%  N%, auto auto''';
    }
  }
}

class ImageSizeInput extends FormzInput<String, ImageSizeInputValidationError> with FormzInputErrorCacheMixin {
  ImageSizeInput.pure([String? initialValue])
      : super.pure(initialValue ?? StyledBackgroundConstants.imageSize.toString());

  ImageSizeInput.dirty([super.value = '']) : super.dirty();

  static final _regExp = [
    RegExp(r'^(contain|cover)$'),
    RegExp(r'^(auto|\d+(px|%)) (auto|\d+(px|%))$'),
    RegExp(r'^(auto|\d+(px|%))$'),
  ];

  @override
  ImageSizeInputValidationError? validator(String value) {
    if (value.isBlank()) {
      return ImageSizeInputValidationError.empty;
    } else if (!(_regExp.any((x) => x.hasMatch(value)))) {
      return ImageSizeInputValidationError.invalid;
    }

    return null;
  }
}
