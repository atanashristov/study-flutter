import 'package:flutter/material.dart';
import 'package:server_driven_ui_from_scratch/dynamic_ui/dynamic_ui.dart';

typedef DynamicWidgetHandler = DynamicWidget Function(Map<String, dynamic> json);

typedef ShowErrorWidgetBuilder = DynamicWidget? Function(
  BuildContext context,
  dynamic error,
);

typedef ShowLoaderWidgetBuilder = DynamicWidget? Function(BuildContext context);
