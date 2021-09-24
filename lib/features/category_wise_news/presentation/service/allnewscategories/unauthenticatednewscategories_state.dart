part of 'unauthenticatednewscategories_cubit.dart';

@freezed
abstract class UnauthenticatednewscategoriesState
    with _$UnauthenticatednewscategoriesState {
  const factory UnauthenticatednewscategoriesState.initial() = _Initial;

  const factory UnauthenticatednewscategoriesState.loading() = _Loading;

  const factory UnauthenticatednewscategoriesState.failed(
      {required String failureMessage}) = _Failed;

  const factory UnauthenticatednewscategoriesState.loaded(
      {required NewsCategory newsCategory}) = _Loaded;
}
