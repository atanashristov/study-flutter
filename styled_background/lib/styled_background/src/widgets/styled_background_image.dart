import 'package:flutter/material.dart';
import 'package:styled_background/styled_background/styled_background.dart';

class StyledBackgroundImage extends StatelessWidget {
  final StyledBackgroundImageModel model;
  final Size bgSize;

  const StyledBackgroundImage({
    required this.model,
    required this.bgSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget? res;

    if (bgSize.isEmpty) {
      return SizedBox.shrink();
    }

    final alignment = Alignment(
      ((model.positionPercentage.$1 ?? 0) + (model.offsetPercentage.$1 ?? 0)) * 2 / 100 - 1,
      ((model.positionPercentage.$2 ?? 0) + (model.offsetPercentage.$2 ?? 0)) * 2 / 100 - 1,
    );

    final imgWidth =
        model.sizePercentage.$1 != null ? model.sizePercentage.$1! * bgSize.width / 100 : model.sizeLength.$1;
    final imgHeight =
        model.sizePercentage.$2 != null ? model.sizePercentage.$2! * bgSize.height / 100 : model.sizeLength.$2;

    BoxFit? imgFit;
    if (model.fit != null) {
      imgFit = BoxFit.cover;
    } else if (imgWidth != null || imgHeight != null) {
      if ((imgWidth ?? 0) <= bgSize.width + .5 && (imgHeight ?? 0) <= bgSize.height + .5) {
        imgFit = BoxFit.fill;
      } else {
        // TODO
      }
    }

    res = Image(
      image: model.fileName.startsWith('http') ? NetworkImage(model.fileName) : AssetImage(model.fileName),
      opacity: AlwaysStoppedAnimation(model.opacity),
      width: imgWidth,
      height: imgHeight,
      fit: imgFit,
      // fit: BoxFit.contain,
      alignment: (model.fit != null) ? Alignment.center : Alignment.topLeft,
    );

    // if (model.sizePercentage.$1 != null || model.sizePercentage.$2 != null) {
    //   res = FractionallySizedBox(
    //     widthFactor: model.sizePercentage.$1 != null ? model.sizePercentage.$1! * bgSize.width / 100 : null,
    //     heightFactor: model.sizePercentage.$2 != null ? model.sizePercentage.$2! * bgSize.width / 100 : null,
    //     child: res,
    //   );
    // }

    // if (model.fit == null) {
    //   res = UnconstrainedBox(
    //     clipBehavior: Clip.none,
    //     alignment: alignment,
    //     child: res,
    //   );
    // }

    res = Align(
      alignment: alignment,
      child: res,
    );

    if (model.fit != null) {
      res = ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: FittedBox(
          alignment: alignment,
          fit: model.fit!,
          child: res,
        ),
      );
    }

    res = ClipRect(
      child: Transform.translate(
        offset: Offset(
          (model.positionLength.$1 ?? 0) + (model.offsetLength.$1 ?? 0),
          (model.positionLength.$2 ?? 0) + (model.offsetLength.$2 ?? 0),
        ),
        child: res,
      ),
    );

    return res;
  }
}

/*
    final customSizeRegexp = RegExp(r'^(auto|\d+(px|%)) (auto|\d+(px|%))$');

    const kDefaultAlignment = Alignment.topLeft;
    const kDefaultBoxConstraints = BoxConstraints.expand();

    final (imageWidth, imageHeight) = model.sizeLength;
    final (widthPercentage, heightPercentage) = model.sizePercentage;
    final (positionLengthX, positionLengthY) = model.positionLength;
    final (positionPercentageX, positionPercentageY) = model.positionPercentage;
    final (offsetLengthX, offsetLengthY) = model.offsetLength;

    Alignment alignment = model.alignment ?? kDefaultAlignment;
    if (positionPercentageX != null) {
      alignment = Alignment(positionPercentageX * 2 / 100 - 1, alignment.y);
    }
    if (positionPercentageY != null) {
      alignment = Alignment(alignment.x, positionPercentageY * 2 / 100 - 1);
    }

    final padLeft = (offsetLengthX ?? 0) > 0 ? (offsetLengthX ?? 0.0) : 0.0;
    final padRight = ((offsetLengthX ?? 0) < 0 ? (offsetLengthX ?? 0.0) : 0.0) * -1;
    final padTop = (offsetLengthY ?? 0) > 0 ? (offsetLengthY ?? 0.0) : 0.0;
    final padBottom = ((offsetLengthY ?? 0) < 0 ? (offsetLengthY ?? 0.0) : 0.0) * -1;

    Widget result = Align(
      alignment: alignment,
      child: Padding(
        padding: EdgeInsets.fromLTRB(padLeft, padTop, padRight, padBottom),
        child: FractionallySizedBox(
          widthFactor: widthPercentage != null ? widthPercentage / 100 : null,
          heightFactor: heightPercentage != null ? heightPercentage / 100 : null,
          alignment: alignment,
          child: Image(
            image: model.fileName.startsWith('http') ? NetworkImage(model.fileName) : AssetImage(model.fileName),
            opacity: AlwaysStoppedAnimation(model.opacity),
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.fill,
            // alignment: alignment,
          ),
        ),
      ),
    );

    final top = (positionLengthY ?? 0) + (offsetLengthY ?? 0);
    final left = (positionLengthX ?? 0) + (offsetLengthX ?? 0);

    result = Positioned.fill(
      top: top,
      left: left,
      child: (model.fit == null)
          ? result
          : ConstrainedBox(
              constraints: kDefaultBoxConstraints,
              child: FittedBox(
                alignment: alignment,
                fit: model.fit!,
                child: result,
              ),
            ),
    );

    if (1 == 1) {
      return result;
    }

    if (model.fit != null) {
      return ConstrainedBox(
        constraints: kDefaultBoxConstraints,
        child: FittedBox(
          alignment: alignment,
          fit: model.fit!,
          child: Image.asset(
            model.fileName,
            opacity: AlwaysStoppedAnimation(model.opacity),
          ),
        ),
      );
    }

    return Positioned(
      top: positionLengthX,
      left: positionLengthY,
      child: Align(
        alignment: model.alignment ?? kDefaultAlignment,
        child: FractionallySizedBox(
          widthFactor: widthPercentage != null ? widthPercentage / 100 : null,
          heightFactor: heightPercentage != null ? heightPercentage / 100 : null,
          alignment: model.alignment ?? kDefaultAlignment,
          child: Image.asset(
            model.fileName,
            opacity: AlwaysStoppedAnimation(model.opacity),
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.fill,
            alignment: model.alignment ?? Alignment.center,
          ),
        ),
      ),
    );

    // TODO: bgImageSize - Large sizes in pixels do not extend, so it probably needs UnconstrainedBox
    // TODO: bgImageXOffset, bgImageXOffset - not yet implemented (in pixels always)

    if (imageWidth != null || imageHeight != null || widthPercentage != null || heightPercentage != null) {
      return Align(
        alignment: model.alignment ?? kDefaultAlignment,
        widthFactor: widthPercentage != null ? widthPercentage / 100 : null,
        heightFactor: heightPercentage != null ? heightPercentage / 100 : null,
        child: FractionallySizedBox(
          widthFactor: widthPercentage != null ? widthPercentage / 100 : null,
          heightFactor: heightPercentage != null ? heightPercentage / 100 : null,
          alignment: model.alignment ?? kDefaultAlignment,
          child: UnconstrainedBox(
            clipBehavior: Clip.hardEdge,
            alignment: model.alignment ?? kDefaultAlignment,
            child: Image.asset(
              model.fileName,
              opacity: AlwaysStoppedAnimation(model.opacity),
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.fill,
              alignment: model.alignment ?? Alignment.center,
            ),
          ),
        ),
      );
    }


    // if (imageWidth != null || imageHeight != null) {
    //   return Align(
    //     alignment: model.alignment ?? kDefaultAlignment,
    //     child: OverflowBox(
    //       maxWidth: imageWidth,
    //       maxHeight: imageHeight,
    //       alignment: model.alignment ?? kDefaultAlignment,
    //       child: Image.asset(
    //         model.fileName,
    //         opacity: AlwaysStoppedAnimation(model.opacity),
    //         width: imageWidth,
    //         height: imageHeight,
    //         fit: BoxFit.cover,
    //         alignment: model.alignment ?? Alignment.center,
    //       ),
    //     ),
    //   );
    // }

    if (model.alignment != null) {
      return Align(
        alignment: model.alignment ?? kDefaultAlignment,
        child: SizedBox(
          width: imageWidth,
          height: imageHeight,
          child: Image.asset(
            model.fileName,
            opacity: AlwaysStoppedAnimation(model.opacity),
            width: imageWidth,
            height: imageHeight,
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
        width: imageWidth,
        height: imageHeight,
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
*/
