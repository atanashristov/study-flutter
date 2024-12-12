import 'package:flutter/material.dart';
import 'package:styled_background/styled_background/styled_background.dart';

final _kCustomSizeRegExp = RegExp(r'^(auto|\d+(px|%)) (auto|\d+(px|%))$');

class StyledBackgroundModelBuilder {
  StyledBackgroundWidgetModel buildFromConfiguration(StyledBackgroundConfig config) {
    final result = StyledBackgroundWidgetModel(
      bgColor: config.bgColor,
      bgImage: config.bgImageFileName == null
          ? null
          : StyledBackgroundImageModel(
              fileName: config.bgImageFileName!,
              alignment: _getImageAlignment(config),
              fit: _getImageFit(config),
              size: _getImageSize(config),
            ),
    );

    return result;
  }

  StyledBackgroundImageSizeModel? _getImageSize(StyledBackgroundConfig config) {
    final imageSize = config.bgImageSize.trim();

    if (_kCustomSizeRegExp.hasMatch(imageSize)) {
      final sizes = imageSize.split(' ');
      if (sizes.length != 2) {
        return null;
      }

      double? width;
      double? widthFactor;
      double? height;
      double? heightFactor;

      final sizeWidth = sizes[0];
      if (sizeWidth.contains('px')) {
        width = double.tryParse(sizeWidth.replaceAll('px', ''));
      } else if (sizeWidth.contains('%')) {
        widthFactor = double.tryParse(sizeWidth.replaceAll('px', ''));
      }

      final sizeHeight = sizes[1];
      if (sizeHeight.contains('px')) {
        height = double.tryParse(sizeHeight.replaceAll('px', ''));
      } else if (sizeHeight.contains('%')) {
        heightFactor = double.tryParse(sizeHeight.replaceAll('px', ''));
      }

      return StyledBackgroundImageSizeModel(
        width: width,
        height: height,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );
    }

    return null;
  }

  BoxFit? _getImageFit(StyledBackgroundConfig config) {
    final imageSize = config.bgImageSize.trim();

    if (imageSize == "contain") {
      return BoxFit.contain;
    } else if (imageSize == "cover") {
      return BoxFit.cover;
    }
    return null;
  }

  /// Gets image alignment based on bgImagePosX and bgImagePosY having
  /// "left", "center", "right" and "top", "center", "bottom" as possible values.
  AlignmentGeometry? _getImageAlignment(StyledBackgroundConfig config) {
    final posX = config.bgImagePosX.trim();
    final posY = config.bgImagePosY.trim();
    final posXY = '$posX $posY'.trim();

    if (posY == 'top' && posX == 'left') {
      return Alignment.topLeft;
    } else if (posY == 'top' && posX == 'center') {
      return Alignment.topCenter;
    } else if (posY == 'top' && posX == 'right') {
      return Alignment.topRight;
    } else if (posY == 'center' && posX == 'left') {
      return Alignment.centerLeft;
    } else if (posY == 'center' && posX == 'center') {
      return Alignment.center;
    } else if (posY == 'center' && posX == 'right') {
      return Alignment.centerRight;
    } else if (posY == 'bottom' && posX == 'left') {
      return Alignment.bottomLeft;
    } else if (posY == 'bottom' && posX == 'center') {
      return Alignment.bottomCenter;
    } else if (posY == 'bottom' && posX == 'right') {
      return Alignment.bottomRight;
    } else if (posXY == 'top') {
      return Alignment.topCenter;
    } else if (posXY == 'center') {
      return Alignment.center;
    } else if (posXY == 'bottom') {
      return Alignment.bottomCenter;
    } else if (posXY == 'left') {
      return Alignment.centerLeft;
    } else if (posXY == 'right') {
      return Alignment.centerRight;
    }

    return null;
  }
}
