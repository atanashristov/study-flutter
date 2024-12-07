import 'package:server_driven_ui_from_scratch/dynamic_ui/dynamic_ui.dart';

class DynamicWidgetHandlers {
  static init() {
    DynamicWidgetHandlerRepo.addDynamicWidgetHandler("dy_container", (json) => DynamicContainer.fromJson(json));
    DynamicWidgetHandlerRepo.addDynamicWidgetHandler("dy_text", (json) => DynamicText.fromJson(json));
    DynamicWidgetHandlerRepo.addDynamicWidgetHandler("dy_column", (json) => DynamicColumn.fromJson(json));
    DynamicWidgetHandlerRepo.addDynamicWidgetHandler("dy_row", (json) => DynamicRow.fromJson(json));
  }
}
