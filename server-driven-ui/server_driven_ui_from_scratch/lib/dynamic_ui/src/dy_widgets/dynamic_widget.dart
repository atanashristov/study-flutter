import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: false,
)
abstract class DynamicWidget {
  @JsonKey(required: true)
  final String? key;

  DynamicWidget({required this.key});

  Widget build(BuildContext context);

  factory DynamicWidget.fromJson(Map<String, dynamic> json) {
    try {
      String type = json['type'];
      DynamicWidgetHandler? dynamicWidgetHandler = DynamicWidgetHandlerRepo.getDynamicWidgetHandlerForType(type);

      if (dynamicWidgetHandler != null && json.containsKey('data')) {
        DynamicWidget widget = dynamicWidgetHandler(json['data']);
        return widget;
      } else {
        debugPrint('failed to create dynamic widget');
        return DynamicContainer(width: 0.0);
      }
    } catch (e) {
      debugPrint('failed to create dynamic widget');
      return DynamicContainer(width: 0.0);
    }
  }

  List<DynamicWidget?>? get childWidgets;
}
