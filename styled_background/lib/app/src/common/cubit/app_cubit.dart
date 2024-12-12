import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:styled_background/styled_background/styled_background.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({StyledBackgroundConfig? config}) : super(AppState(config: config ?? StyledBackgroundConfig()));

  Future<void> buildBackground() async {
    emit(state.copyWith(
      status: Status.buildingBackground(),
    ));
    final model = StyledBackgroundModelBuilder().buildFromConfiguration(state.config);
    emit(state.copyWith(
      status: Status.backgroundBuilded(),
      model: model,
    ));
  }

  Future<void> setConfiguration({
    required String fileName,
    required double opacity,
    required String imageSize,
    required String imagePosX,
    required String imagePosY,
    required String imageXOffset,
    required String imageYOffset,
  }) async {
    final config = state.config.copyWith(
      bgImageFileName: fileName,
      bgImageOpacity: opacity,
      bgImageSize: imageSize,
      bgImagePosX: imagePosX,
      bgImagePosY: imagePosY,
      bgImageXOffset: imageXOffset,
      bgImageYOffset: imageYOffset,
    );
    emit(state.copyWith(
      status: Status.buildingBackground(),
      config: config,
    ));
    final model = StyledBackgroundModelBuilder().buildFromConfiguration(state.config);
    emit(state.copyWith(
      status: Status.backgroundBuilded(),
      model: model,
    ));
  }
}
