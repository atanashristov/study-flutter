part of 'app_cubit.dart';

@freezed
class Status with _$Status {
  const factory Status.initial() = _Initial;
  const factory Status.buildingBackground() = _BuildingBackground;
  const factory Status.backgroundBuilded() = _BackgroundBuilded;
  const factory Status.error() = _Error;
}

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(Status.initial()) Status status,
    @Default(StyledBackgroundConfig()) StyledBackgroundConfig config,
    @Default(null) StyledBackgroundWidgetModel? model,
  }) = _AppState;
}
