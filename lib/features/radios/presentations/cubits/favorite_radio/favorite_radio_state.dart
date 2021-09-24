part of 'favorite_radio_cubit.dart';

@freezed
abstract class FavoriteRadioState with _$FavoriteRadioState {
  const factory FavoriteRadioState.initial() = _Initial;

  const factory FavoriteRadioState.loaded(
      {required FavoriteRadiosModel favoriteRadiosModel}) = _Loaded;
}
