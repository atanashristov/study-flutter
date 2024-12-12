import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:styled_background/app/app.dart';
import 'package:styled_background/app/src/localization/string_hardcoded.dart';
import 'package:styled_background/styled_background/styled_background.dart';

typedef ConfigurationFormSubmitHandler = Future<void> Function({
  required String fileName,
  required double opacity,
  required String imageSize,
  required String imagePosX,
  required String imagePosY,
  required String imageXOffset,
  required String imageYOffset,
});

class ConfigurationForm extends StatefulWidget {
  final ConfigurationFormSubmitHandler onFormSubmit;
  final StyledBackgroundConfig config;
  const ConfigurationForm({
    required this.onFormSubmit,
    required this.config,
    super.key,
  });

  @override
  State<ConfigurationForm> createState() => _ConfigurationFormState();
}

class _ConfigurationFormState extends State<ConfigurationForm> {
  final _key = GlobalKey<FormState>();
  late ConfigurationFormState _state;
  late final TextEditingController _fileNameController;
  late final TextEditingController _opacityController;
  late final TextEditingController _imageSizeController;
  late final TextEditingController _imagePosXController;
  late final TextEditingController _imagePosYController;
  late final TextEditingController _imageXOffsetController;
  late final TextEditingController _imageYOffsetController;

  void _onFileNameChanged() {
    setState(() {
      _state = _state.copyWith(fileName: ImageFileNameInput.dirty(_fileNameController.text));
    });
  }

  void _onOpacityChanged() {
    setState(() {
      _state = _state.copyWith(opacity: ImageOpacityInput.dirty(_opacityController.text));
    });
  }

  void _onImageSizeChanged() {
    setState(() {
      _state = _state.copyWith(imageSize: ImageSizeInput.dirty(_imageSizeController.text));
    });
  }

  void _onImagePosXChanged() {
    setState(() {
      _state = _state.copyWith(imagePosX: ImagePositionXInput.dirty(_imagePosXController.text));
    });
  }

  void _onImagePosYChanged() {
    setState(() {
      _state = _state.copyWith(imagePosY: ImagePositionYInput.dirty(_imagePosYController.text));
    });
  }

  void _onImageXOffsetChanged() {
    setState(() {
      _state = _state.copyWith(imageXOffset: ImageOffsetInput.dirty(_imageXOffsetController.text));
    });
  }

  void _onImageYOffsetChanged() {
    setState(() {
      _state = _state.copyWith(imageYOffset: ImageOffsetInput.dirty(_imageYOffsetController.text));
    });
  }

  Future<void> _onSubmit() async {
    if (!_key.currentState!.validate()) {
      return;
    }

    setState(() {
      _state = _state.copyWith(status: FormzSubmissionStatus.inProgress);
    });

    try {
      await _submitForm();
      _state = _state.copyWith(status: FormzSubmissionStatus.success);
    } catch (_) {
      _state = _state.copyWith(status: FormzSubmissionStatus.failure);
    }

    if (!mounted) {
      return;
    }

    setState(() {});

    FocusScope.of(context)
      ..nextFocus()
      ..unfocus();

    const successSnackBar = SnackBar(
      content: Text('Submitted successfully! 🎉'),
      duration: Duration(milliseconds: 200),
    );

    const failureSnackBar = SnackBar(
      content: Text('Something went wrong... 🚨'),
      duration: Duration(milliseconds: 400),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        _state.status.isSuccess ? successSnackBar : failureSnackBar,
      );
  }

  Future<void> _submitForm() async {
    await widget.onFormSubmit(
      fileName: _state.fileName.value,
      opacity: double.tryParse(_state.opacity.value) ?? 1.0,
      imageSize: _state.imageSize.value,
      imagePosX: _state.imagePosX.value,
      imagePosY: _state.imagePosY.value,
      imageXOffset: _state.imageXOffset.value,
      imageYOffset: _state.imageYOffset.value,
    );
  }

  @override
  void initState() {
    super.initState();
    _state = ConfigurationFormState(
      fileName: ImageFileNameInput.pure(widget.config.bgImageFileName),
      opacity: ImageOpacityInput.pure(widget.config.bgImageOpacity.toString()),
      imageSize: ImageSizeInput.pure(widget.config.bgImageSize),
      imagePosX: ImagePositionXInput.pure(widget.config.bgImagePosX),
      imagePosY: ImagePositionYInput.pure(widget.config.bgImagePosY),
      imageXOffset: ImageOffsetInput.pure(widget.config.bgImageXOffset),
      imageYOffset: ImageOffsetInput.pure(widget.config.bgImageYOffset),
    );
    _fileNameController = TextEditingController(text: _state.fileName.value)..addListener(_onFileNameChanged);
    _opacityController = TextEditingController(text: _state.opacity.value)..addListener(_onOpacityChanged);
    _imageSizeController = TextEditingController(text: _state.imageSize.value)..addListener(_onImageSizeChanged);
    _imagePosXController = TextEditingController(text: _state.imagePosX.value)..addListener(_onImagePosXChanged);
    _imagePosYController = TextEditingController(text: _state.imagePosY.value)..addListener(_onImagePosYChanged);
    _imageXOffsetController = TextEditingController(text: _state.imageXOffset.value)
      ..addListener(_onImageXOffsetChanged);
    _imageYOffsetController = TextEditingController(text: _state.imageYOffset.value)
      ..addListener(_onImageYOffsetChanged);
  }

  @override
  void dispose() {
    _fileNameController.dispose();
    _opacityController.dispose();
    _imageSizeController.dispose();
    _imagePosXController.dispose();
    _imagePosYController.dispose();
    _imageXOffsetController.dispose();
    _imageYOffsetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              key: const Key('configuration_form_file_name_input'),
              controller: _fileNameController,
              decoration: InputDecoration(
                icon: Icon(Icons.image),
                labelText: 'bgImageFileName'.hardcoded,
                helperText: 'BackgroundImage-(1|2).png'.hardcoded,
              ),
              validator: (value) => _state.fileName.validator(value ?? '')?.text(),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: const Key('configuration_form_opacity_input'),
              controller: _opacityController,
              decoration: InputDecoration(
                icon: Icon(Icons.opacity),
                labelText: 'bgImageOpacity'.hardcoded,
                helperText: '0.0 .. 1.0'.hardcoded,
              ),
              validator: (value) => _state.opacity.validator(value ?? '')?.text(),
              keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: const Key('configuration_form_image_size_input'),
              controller: _imageSizeController,
              decoration: InputDecoration(
                icon: Icon(Icons.aspect_ratio),
                labelText: 'bgImageSize (contain; cover; w h: Npx, N%, auto)'.hardcoded,
                helperText: 'contain, cover, Npx Npx, N% N%'.hardcoded,
              ),
              validator: (value) => _state.imageSize.validator(value ?? '')?.text(),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: const Key('configuration_form_image_pos_x_input'),
              controller: _imagePosXController,
              decoration: InputDecoration(
                icon: Icon(Icons.align_horizontal_left),
                labelText: 'bgImagePosX'.hardcoded,
                helperText: 'left, center, right, Npx, N%, -Npx, -N%'.hardcoded,
              ),
              validator: (value) => _state.imagePosX.validator(value ?? '')?.text(),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: const Key('configuration_form_image_pos_y_input'),
              controller: _imagePosYController,
              decoration: InputDecoration(
                icon: Icon(Icons.align_vertical_top),
                labelText: 'bgImagePosY'.hardcoded,
                helperText: 'top, center, bottom, Npx, N%, -Npx, -N%'.hardcoded,
              ),
              validator: (value) => _state.imagePosY.validator(value ?? '')?.text(),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: const Key('configuration_form_image_offset_x_input'),
              controller: _imageXOffsetController,
              decoration: InputDecoration(
                icon: Icon(Icons.swap_horiz),
                labelText: 'bgImageXOffset'.hardcoded,
                helperText: 'Npx -Npx'.hardcoded,
              ),
              validator: (value) => _state.imageXOffset.validator(value ?? '')?.text(),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              key: const Key('configuration_form_image_offset_y_input'),
              controller: _imageYOffsetController,
              decoration: InputDecoration(
                icon: Icon(Icons.swap_vert),
                labelText: 'bgImageYOffset'.hardcoded,
                helperText: 'Npx -Npx'.hardcoded,
              ),
              validator: (value) => _state.imageYOffset.validator(value ?? '')?.text(),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 24),
            if (_state.status.isInProgress)
              const CircularProgressIndicator()
            else
              ElevatedButton(
                key: const Key('configurartion_form_submit_button'),
                onPressed: _onSubmit,
                child: Text('Save'.hardcoded),
              ),
          ],
        ));
  }
}
