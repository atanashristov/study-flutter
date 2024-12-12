import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_background/app/app.dart';
import 'package:styled_background/app/src/localization/string_hardcoded.dart';

class ConfigurationCard extends StatelessWidget {
  const ConfigurationCard({super.key});

  TableRow _buildTableRow(String col1, String? col2) => TableRow(children: [
        TableCell(child: Padding(padding: const EdgeInsets.all(4.0), child: Text(col1))),
        TableCell(child: Padding(padding: const EdgeInsets.all(4.0), child: Text(col2 ?? '-'))),
      ]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return Table(
                border: TableBorder.all(width: 0.5, color: Colors.blueGrey),
                children: [
                  _buildTableRow('bgImageFileName'.hardcoded, state.config.bgImageFileName),
                  _buildTableRow('bgImageOpacity'.hardcoded, state.config.bgImageOpacity.toString()),
                  _buildTableRow('bgImageSize (w/h)'.hardcoded, state.config.bgImageSize),
                  _buildTableRow('bgImagePosX'.hardcoded, state.config.bgImagePosX),
                  _buildTableRow('bgImagePosY'.hardcoded, state.config.bgImagePosY),
                  _buildTableRow('bgImageXOffset'.hardcoded, state.config.bgImageXOffset),
                  _buildTableRow('bgImageYOffset'.hardcoded, state.config.bgImageYOffset),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
