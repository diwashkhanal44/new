part of 'newstopics_cubit.dart';

@freezed
abstract class NewstopicsState with _$NewstopicsState {
  const factory NewstopicsState.initial() = _Initial;

  const factory NewstopicsState.loading() = _Loading;

  const factory NewstopicsState.failed({required String failureMessage}) =
      _Failed;

  const factory NewstopicsState.loaded({required NewsTopics newsCategory}) =
      _Loaded;
}
