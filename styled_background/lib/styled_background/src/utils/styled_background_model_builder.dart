import 'package:flutter/material.dart';
import 'package:styled_background/styled_background/styled_background.dart';

/// Styled background model builder
class StyledBackgroundModelBuilder {
  static final _kCustomSizeRegExp = RegExp(r'^(auto|-?\d+(px|%)) (auto|-?\d+(px|%))$');
  static final _kCustomSingleSizeRegExp = RegExp(r'^(auto|-?\d+(px|%))$');
  static final _kPercentageRegExp = RegExp(r'^-?\d+%$');
  static final _kPixelsRegExp = RegExp(r'^-?\d+px$');

  static const _kSpace = ' ';
  static const _kAuto = 'auto';
  static const _kPixel = 'px';
  static const _kPrct = '%';
  static const _kValidSymbols = [_kPixel, _kPrct];
  static const _kContain = 'contain';
  static const _kCover = 'cover';
  static const _kLeft = 'left';
  static const _kCenter = 'center';
  static const _kRight = 'right';
  static const _kTop = 'top';
  static const _kBottom = 'bottom';
  static const _kHorizontalValues = [_kLeft, _kCenter, _kRight];
  static const _kVerticalValues = [_kTop, _kCenter, _kBottom];

  /// Builds model for styled background off configuration
  StyledBackgroundWidgetModel buildFromConfiguration(StyledBackgroundConfig config) {
    final result = StyledBackgroundWidgetModel(
      bgColor: config.bgColor,
      bgImage: (config.bgImageFileName ?? '').trim().isEmpty
          ? null
          : StyledBackgroundImageModel(
              fileName: config.bgImageFileName!,
              opacity: config.bgImageOpacity,
              alignment: _getImageAlignment(config),
              fit: _getImageFit(config),
              sizeLength: _getImageSize(config, symbol: 'px'),
              sizePercentage: _getImageSize(config, symbol: '%'),
              positionLength: _getPosition(config, symbol: 'px'),
              positionPercentage: _getPosition(config, symbol: '%'),
              offsetLength: _getOffset(config, symbol: 'px'),
              offsetPercentage: _getOffset(config, symbol: '%'),
            ),
    );

    return result;
  }

  /// Gets the image size length or percentage based on bgImageSize having
  /// "Npx" or "N%" in either dimension.
  ///
  /// Specify 'px' for symbol to get length in pixes size.
  ///
  /// Specify '%' for symbol to get percentage size.
  (double?, double?) _getImageSize(
    StyledBackgroundConfig config, {
    required String symbol,
  }) {
    assert(
      _kValidSymbols.contains(symbol),
      'Numeric values of image size can only be "px" or "%" and not "$symbol"',
    );

    var imageSize = config.bgImageSize.trim();

    if (_kCustomSingleSizeRegExp.hasMatch(imageSize)) {
      imageSize = '$imageSize $_kAuto';
    }

    if (_kCustomSizeRegExp.hasMatch(imageSize)) {
      final sizes = imageSize.split(_kSpace);
      if (sizes.length != 2) {
        return (null, null);
      }

      double? width = sizes[0].contains(symbol) ? double.tryParse(sizes[0].replaceAll(symbol, '')) : null;
      double? height = sizes[1].contains(symbol) ? double.tryParse(sizes[1].replaceAll(symbol, '')) : null;

      return (width, height);
    }

    return (null, null);
  }

  /// Gets the image position offset length or percentage based on bgImagePosX, bgImagePosY having
  /// "Npx" or "N%" in either dimension.
  ///
  /// Specify 'px' for symbol to get length in pixes size.
  ///
  /// Specify '%' for symbol to get percentage size.
  (double?, double?) _getPosition(
    StyledBackgroundConfig config, {
    required String symbol,
  }) {
    assert(
      _kValidSymbols.contains(symbol),
      'Numeric values of image position can only be "px" or "%" and not "$symbol"',
    );

    var posX = config.bgImagePosX.trim();
    var posY = config.bgImagePosY.trim();
    var regExp = symbol == _kPixel ? _kPixelsRegExp : _kPercentageRegExp;

    double? width = regExp.hasMatch(posX) ? double.tryParse(posX.replaceAll(symbol, '')) : null;
    double? height = regExp.hasMatch(posY) ? double.tryParse(posY.replaceAll(symbol, '')) : null;

    return (width, height);
  }

  (double?, double?) _getOffset(
    StyledBackgroundConfig config, {
    required String symbol,
  }) {
    assert(
      _kValidSymbols.contains(symbol),
      'Numeric values of image position can only be "px" or "%" and not "$symbol"',
    );

    var offsetX = config.bgImageXOffset.trim();
    var offsetY = config.bgImageYOffset.trim();
    var regExp = symbol == _kPixel ? _kPixelsRegExp : _kPercentageRegExp;

    double? width = regExp.hasMatch(offsetX) ? double.tryParse(offsetX.replaceAll(symbol, '')) : null;
    double? height = regExp.hasMatch(offsetY) ? double.tryParse(offsetY.replaceAll(symbol, '')) : null;

    return (width, height);
  }

  /// Gets the image fit based in bgImageSize having
  /// "contain" ot "cover"
  BoxFit? _getImageFit(StyledBackgroundConfig config) {
    final imageSize = config.bgImageSize.trim();

    if (imageSize == _kContain) {
      return BoxFit.contain;
    } else if (imageSize == _kCover) {
      return BoxFit.cover;
    }
    return null;
  }

  /// Gets image alignment based on bgImagePosX and bgImagePosY having
  /// "left", "center", "right" and "top", "center", "bottom" as possible values.
  Alignment? _getImageAlignment(StyledBackgroundConfig config) {
    final posX = config.bgImagePosX.trim();
    final posY = config.bgImagePosY.trim();
    final posXY = '$posX $posY'.trim();

    if (posY == _kTop && posX == _kLeft) {
      return Alignment.topLeft;
    } else if (posY == _kTop && posX == _kCenter) {
      return Alignment.topCenter;
    } else if (posY == _kTop && posX == _kRight) {
      return Alignment.topRight;
    } else if (posY == _kCenter && posX == _kLeft) {
      return Alignment.centerLeft;
    } else if (posY == _kCenter && posX == _kCenter) {
      return Alignment.center;
    } else if (posY == _kCenter && posX == _kRight) {
      return Alignment.centerRight;
    } else if (posY == _kBottom && posX == _kLeft) {
      return Alignment.bottomLeft;
    } else if (posY == _kBottom && posX == _kCenter) {
      return Alignment.bottomCenter;
    } else if (posY == _kBottom && posX == _kRight) {
      return Alignment.bottomRight;
    } else if (posXY == _kTop) {
      return Alignment.topCenter;
    } else if (posXY == _kCenter) {
      return Alignment.center;
    } else if (posXY == _kBottom) {
      return Alignment.bottomCenter;
    } else if (posXY == _kLeft) {
      return Alignment.centerLeft;
    } else if (posXY == _kRight) {
      return Alignment.centerRight;
    } else if (posY == _kTop && !_kHorizontalValues.contains(posX)) {
      return Alignment.topLeft;
    } else if (posY == _kCenter && !_kHorizontalValues.contains(posX)) {
      return Alignment.centerLeft;
    } else if (posY == _kBottom && !_kHorizontalValues.contains(posX)) {
      return Alignment.bottomLeft;
    } else if (!_kVerticalValues.contains(posY) && posX == _kLeft) {
      return Alignment.topLeft;
    } else if (!_kVerticalValues.contains(posY) && posX == _kCenter) {
      return Alignment.topCenter;
    } else if (!_kVerticalValues.contains(posY) && posX == _kRight) {
      return Alignment.topRight;
    }

    return null;
  }
}
