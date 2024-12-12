import 'package:formz/formz.dart';
import 'package:strings/strings.dart';
import 'package:styled_background/app/app.dart';

enum ImageFileNameInputValidationError {
  invalid,
  empty,
  ;

  String text() {
    switch (this) {
      case ImageFileNameInputValidationError.invalid:
        return '''assets/images/BackgroundImage-(1|2).png please...''';
      case ImageFileNameInputValidationError.empty:
        return '''Please enter a file name''';
    }
  }
}

class ImageFileNameInput extends FormzInput<String, ImageFileNameInputValidationError> with FormzInputErrorCacheMixin {
  ImageFileNameInput.pure([String? initialValue])
      : super.pure(initialValue ?? StyledBackgroundConstants.imageFileName1);

  ImageFileNameInput.dirty([super.value = '']) : super.dirty();

  static final _validFileNames = [
    'assets/images/${StyledBackgroundConstants.imageFileName1}',
    'assets/images/${StyledBackgroundConstants.imageFileName2}',
    'https://reflecthairstudio.com/assets/images/test/${StyledBackgroundConstants.imageFileName1}',
    'https://reflecthairstudio.com/assets/images/test/${StyledBackgroundConstants.imageFileName2}',
  ];

  @override
  ImageFileNameInputValidationError? validator(String value) {
    if (value.isBlank()) {
      return ImageFileNameInputValidationError.empty;
    } else if (!_validFileNames.contains(value)) {
      return ImageFileNameInputValidationError.invalid;
    }

    return null;
  }
}
