part of 'publisher_news_cubit.dart';

@freezed
abstract class PublisherNewsState with _$PublisherNewsState {
  const factory PublisherNewsState.initial() = _Initial;
  const factory PublisherNewsState.loading() = _Loading;
  const factory PublisherNewsState.loaded({required NewsModel news}) = _Loaded;
  const factory PublisherNewsState.failed({required String failureMessage}) =
      _Failure;
}
