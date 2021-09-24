part of 'newssources_cubit.dart';

@freezed
abstract class NewssourcesState with _$NewssourcesState {
  const factory NewssourcesState.initial() = _Initial;

  const factory NewssourcesState.loading() = _Loading;
  const factory NewssourcesState.loaded(
      {required NewsSourcesModel allNewsSources}) = _Loaded;
  const factory NewssourcesState.failure({required String failureMessage}) =
      _Failure;
}
