part of 'radiostationslisting_cubit.dart';

@freezed
abstract class RadiostationslistingState with _$RadiostationslistingState {
  const factory RadiostationslistingState.initial() = _Initial;
  const factory RadiostationslistingState.loading() = _Loading;
  const factory RadiostationslistingState.loaded(
      {required RadiosModel allStations}) = _Loaded;
  const factory RadiostationslistingState.failure(
      {required String failureMessage}) = _Failure;
}
