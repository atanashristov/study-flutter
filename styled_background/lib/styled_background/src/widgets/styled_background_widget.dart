import 'package:flutter/material.dart';
import 'package:styled_background/styled_background/styled_background.dart';

class StyledBackgroundWidget extends StatefulWidget {
  // final StyledBackgroundConfig config;
  final StyledBackgroundWidgetModel model;
  final Widget child;
  const StyledBackgroundWidget({
    required this.model,
    required this.child,
    super.key,
  });

  @override
  State<StyledBackgroundWidget> createState() => _StyledBackgroundWidgetState();
}

class _StyledBackgroundWidgetState extends State<StyledBackgroundWidget> {
  // Holds global key reference used to read the height of the widget once rendered
  final _key = GlobalKey(debugLabel: 'styled_background_widget');
  Size? _bgSize;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Once rendered, set the size of the widget onto the state, so that we can use it down the widget tree.
      setState(() {
        _bgSize = _key.currentContext?.size;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      color: widget.model.bgColor,
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.hardEdge,
        children: [
          if (widget.model.bgImage?.fileName != null)
            StyledBackgroundImage(
              model: widget.model.bgImage!,
              bgSize: _bgSize ?? Size.zero,
            ),
          widget.child,
        ],
      ),
    );
  }
}
