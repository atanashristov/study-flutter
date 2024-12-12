import 'package:formz/formz.dart';
import 'package:styled_background/app/app.dart';

class ConfigurationFormState with FormzMixin {
  final ImageFileNameInput fileName;
  final ImageOpacityInput opacity;
  final ImageSizeInput imageSize;
  final ImagePositionXInput imagePosX;
  final ImagePositionYInput imagePosY;
  final ImageOffsetInput imageXOffset;
  final ImageOffsetInput imageYOffset;
  final FormzSubmissionStatus status;

  ConfigurationFormState({
    ImageFileNameInput? fileName,
    ImageOpacityInput? opacity,
    ImageSizeInput? imageSize,
    ImagePositionXInput? imagePosX,
    ImagePositionYInput? imagePosY,
    ImageOffsetInput? imageXOffset,
    ImageOffsetInput? imageYOffset,
    FormzSubmissionStatus? status,
  })  : fileName = fileName ?? ImageFileNameInput.pure(),
        opacity = opacity ?? ImageOpacityInput.pure(),
        imageSize = imageSize ?? ImageSizeInput.pure(),
        imagePosX = imagePosX ?? ImagePositionXInput.pure(),
        imagePosY = imagePosY ?? ImagePositionYInput.pure(),
        imageXOffset = imageXOffset ?? ImageOffsetInput.pure(),
        imageYOffset = imageYOffset ?? ImageOffsetInput.pure(),
        status = status ?? FormzSubmissionStatus.initial;

  ConfigurationFormState copyWith({
    ImageFileNameInput? fileName,
    ImageOpacityInput? opacity,
    ImageSizeInput? imageSize,
    ImagePositionXInput? imagePosX,
    ImagePositionYInput? imagePosY,
    ImageOffsetInput? imageXOffset,
    ImageOffsetInput? imageYOffset,
    FormzSubmissionStatus? status,
  }) {
    return ConfigurationFormState(
      fileName: fileName ?? this.fileName,
      opacity: opacity ?? this.opacity,
      imageSize: imageSize ?? this.imageSize,
      imagePosX: imagePosX ?? this.imagePosX,
      imagePosY: imagePosY ?? this.imagePosY,
      imageXOffset: imageXOffset ?? this.imageXOffset,
      imageYOffset: imageYOffset ?? this.imageYOffset,
      status: status ?? this.status,
    );
  }

  @override
  List<FormzInput> get inputs => [
        fileName,
        opacity,
        imageSize,
        imagePosX,
        imagePosY,
        imageXOffset,
        imageYOffset,
      ];
}
