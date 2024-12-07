import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:server_driven_ui_from_scratch/dynamic_ui/dynamic_ui.dart';

part 'dynamic_column.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: false,
)
class DynamicColumn extends DynamicWidget {
  List<DynamicWidget?>? children;
  @JsonKey(fromJson: WidgetUtil.getMainAxisAlignment)
  MainAxisAlignment? mainAxisAlignment;
  @JsonKey(fromJson: WidgetUtil.getCrossAxisAlignment)
  CrossAxisAlignment? crossAxisAlignment;

  DynamicColumn(
    String? key,
    this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  ) : super(
          key: key ?? '',
        );

  factory DynamicColumn.fromJson(Map<String, dynamic> json) => $DynamicColumnFromJson(json);

  @override
  Widget build(BuildContext context) {
    List<Widget> childWidgets = [];

    children?.forEach((element) {
      childWidgets.add(element!.build(context));
    });

    return Column(
      key: ValueKey(key),
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: (children == null) ? [] : childWidgets,
    );
  }

  @override
  List<DynamicWidget?>? get childWidgets => children ?? [];
}
