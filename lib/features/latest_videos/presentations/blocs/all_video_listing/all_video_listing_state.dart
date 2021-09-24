part of 'all_video_listing_cubit.dart';

@freezed
abstract class AllVideoListingState with _$AllVideoListingState {
  const factory AllVideoListingState.initial() = _Initial;
  const factory AllVideoListingState.loading() = _Loading;
  const factory AllVideoListingState.loaded({required VideoModel allVideos}) =
      _Loaded;
  const factory AllVideoListingState.failure({required String failureMessage}) =
      _Failure;
}
