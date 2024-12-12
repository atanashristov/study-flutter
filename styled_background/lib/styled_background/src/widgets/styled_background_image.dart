import 'package:flutter/material.dart';
import 'package:styled_background/styled_background/styled_background.dart';

class StyledBackgroundImage extends StatelessWidget {
  final StyledBackgroundImageModel model;
  // final String assetPath;
  // final double opacity;
  // final String imageSize;
  // final String posX;
  // final String posY;
  // final bool flipX;
  // final bool flipY;

  const StyledBackgroundImage({
    required this.model,
    // this.opacity = 1.0,
    // this.imageSize = 'contain',
    // this.posX = 'center',
    // this.posY = 'bottom',
    // this.flipX = false,
    // this.flipY = false,
    super.key,
  });

  static final customSizeRegexp = RegExp(r'^(auto|\d+(px|%)) (auto|\d+(px|%))$');

  @override
  Widget build(BuildContext context) {
    double? imageHeight = model.size?.height;
    double? imageWidth = model.size?.width;

    const kDefaultAlignment = Alignment.topLeft;
    const kDefaultBoxConstraints = BoxConstraints.expand();

    if (model.fit != null) {
      return ConstrainedBox(
        constraints: kDefaultBoxConstraints,
        child: FittedBox(
          alignment: model.alignment ?? kDefaultAlignment,
          fit: model.fit!,
          child: Image.asset(
            model.fileName,
            opacity: AlwaysStoppedAnimation(model.opacity),
            height: imageHeight,
            width: imageWidth,
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    if (model.alignment != null) {
      return Align(
        alignment: model.alignment ?? kDefaultAlignment,
        child: SizedBox(
          height: imageHeight,
          width: imageWidth,
          child: Image.asset(
            model.fileName,
            opacity: AlwaysStoppedAnimation(model.opacity),
            height: imageHeight,
            width: imageWidth,
            // alignment: alignment,
            fit: BoxFit.fill,
          ),
        ),
      );
    }

    return ConstrainedBox(
      constraints: kDefaultBoxConstraints,
      child: Image.asset(
        model.fileName,
        opacity: AlwaysStoppedAnimation(model.opacity),
        height: imageHeight,
        width: imageWidth,
        alignment: model.alignment ?? kDefaultAlignment,
        fit: BoxFit.none,
      ),
    );

    // return Align(
    //   alignment: Alignment.bottomCenter,
    //   child: Container(
    //     decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
    //     child: Transform.flip(
    //       flipX: flipX,
    //       flipY: flipY,
    //       child: Image.asset(
    //         assetPath,
    //         opacity: AlwaysStoppedAnimation(opacity),
    //       ),
    //     ),
    //   ),
    // );
  }
}
