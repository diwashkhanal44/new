part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loaded() = _Loaded;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.failed({required String message}) = _Failed;
}
