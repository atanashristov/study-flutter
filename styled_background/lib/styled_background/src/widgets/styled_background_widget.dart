import 'package:flutter/material.dart';
import 'package:styled_background/styled_background/styled_background.dart';

class StyledBackgroundWidget extends StatelessWidget {
  // final StyledBackgroundConfig config;
  final StyledBackgroundWidgetModel model;
  final Widget child;
  const StyledBackgroundWidget({
    required this.model,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgColor,
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.hardEdge,
        children: [
          if (model.bgImage?.fileName != null)
            StyledBackgroundImage(
              model: model.bgImage!,
            ),
          child,
        ],
      ),
    );
  }
}
