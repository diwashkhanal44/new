part of 'fetchfollowednewsauth_cubit.dart';

@freezed
abstract class FetchfollowednewsauthState with _$FetchfollowednewsauthState {
  const factory FetchfollowednewsauthState.initial() = _Initial;
  const factory FetchfollowednewsauthState.fetched(
      {required NewsSourcesFollowed newsSourcesFollowed}) = _Fetched;
  const factory FetchfollowednewsauthState.failed(
      {required String failrueMessage}) = _Failure;
}
