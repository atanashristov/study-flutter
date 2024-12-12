import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_background/app/app.dart';
import 'package:styled_background/styled_background/styled_background.dart';

class ConfigurationPage extends StatelessWidget {
  final StyledBackgroundConfig config;
  const ConfigurationPage({
    required this.config,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Styled Background - Configuration',
      page: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            child: ConfigurationForm(
          config: config,
          onFormSubmit: (
              {required fileName,
              required imagePosX,
              required imagePosY,
              required imageSize,
              required imageXOffset,
              required imageYOffset,
              required opacity}) async {
            context.read<AppCubit>().setConfiguration(
                  fileName: fileName,
                  opacity: opacity,
                  imageSize: imageSize,
                  imagePosX: imagePosX,
                  imagePosY: imagePosY,
                  imageXOffset: imageXOffset,
                  imageYOffset: imageYOffset,
                );
          },
        )),
      ),
    );
  }
}
