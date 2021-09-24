part of 'publisher_video_cubit.dart';

@freezed
abstract class PublisherVideoState with _$PublisherVideoState {
  const factory PublisherVideoState.initial() = _Initial;
  const factory PublisherVideoState.loading() = _Loading;
  const factory PublisherVideoState.loaded({required VideoModel allVideos}) =
      _Loaded;
  const factory PublisherVideoState.failure({required String failureMessage}) =
      _Failure;
}
