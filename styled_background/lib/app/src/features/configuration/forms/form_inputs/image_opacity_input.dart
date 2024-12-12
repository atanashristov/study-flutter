import 'package:formz/formz.dart';
import 'package:strings/strings.dart';
import 'package:styled_background/app/app.dart';

enum ImageOpacityInputValidationError {
  invalid,
  empty,
  ;

  String text() {
    switch (this) {
      case ImageOpacityInputValidationError.invalid:
        return '''0.0 .. 1.0 please...''';
      case ImageOpacityInputValidationError.empty:
        return '''Please enter opacity 0.0 to 1.0''';
    }
  }
}

class ImageOpacityInput extends FormzInput<String, ImageOpacityInputValidationError> with FormzInputErrorCacheMixin {
  ImageOpacityInput.pure([String? initialValue])
      : super.pure(initialValue ?? StyledBackgroundConstants.imageOpacity.toString());

  ImageOpacityInput.dirty([super.value = '']) : super.dirty();

  @override
  ImageOpacityInputValidationError? validator(String value) {
    if (value.isBlank()) {
      return ImageOpacityInputValidationError.empty;
    }

    final d = double.tryParse(value);
    if (d == null || d < 0 || d > 1) {
      return ImageOpacityInputValidationError.invalid;
    }

    return null;
  }
}
