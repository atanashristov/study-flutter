import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:server_driven_ui_from_scratch/dynamic_ui/dynamic_ui.dart';

part 'dynamic_text.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: false,
)
class DynamicText extends DynamicWidget {
  String? text;
  @JsonKey(fromJson: WidgetUtil.getTextStyleFromDTO)
  TextStyle? style;

  DynamicText(
    String? key,
    this.text,
  ) : super(
          key: key ?? '',
        );

  factory DynamicText.fromJson(Map<String, dynamic> json) => $DynamicTextFromJson(json);

  @override
  Widget build(BuildContext context) {
    return Text(
      key: ValueKey(key),
      text ?? '',
      style: style,
    );
  }

  @override
  List<DynamicWidget?>? get childWidgets => [];
}
