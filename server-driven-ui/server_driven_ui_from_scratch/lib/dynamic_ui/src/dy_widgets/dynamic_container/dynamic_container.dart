import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:server_driven_ui_from_scratch/dynamic_ui/dynamic_ui.dart';

part 'dynamic_container.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: false,
)
class DynamicContainer extends DynamicWidget {
  String? backgroundColor;
  double? padding;
  double? height;
  double? width;
  DynamicWidget? child;

  @JsonKey(fromJson: WidgetUtil.getPositionalAlignment)
  Alignment? alignment;

  DynamicContainer(
    String? key,
    this.backgroundColor,
    this.padding,
    this.height,
    this.width,
    this.child,
    this.alignment,
  ) : super(
          key: key ?? '',
        );

  factory DynamicContainer.fromJson(Map<String, dynamic> json) => $DynamicContainerFromJson(json);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(key),
      color: backgroundColor != null ? Color(int.parse(backgroundColor!)) : null,
      padding: padding != null ? EdgeInsets.all(padding!) : EdgeInsets.zero,
      height: height,
      width: width,
      alignment: alignment ?? Alignment.center,
      child: child?.build(context),
    );
  }

  @override
  List<DynamicWidget?>? get childWidgets => child == null ? [] : [child!];
}
