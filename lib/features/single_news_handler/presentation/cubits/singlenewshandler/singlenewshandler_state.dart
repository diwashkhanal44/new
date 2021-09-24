part of 'singlenewshandler_cubit.dart';

@freezed
abstract class SinglenewshandlerState with _$SinglenewshandlerState {
  const factory SinglenewshandlerState.initial() = _Initial;

  const factory SinglenewshandlerState.loaded(
      {required SingleNewsDetails singleNewsDetails}) = _Loaded;

  const factory SinglenewshandlerState.failure(
      {required String failureMessage}) = _Failure;

  const factory SinglenewshandlerState.success() = _Success;
}
