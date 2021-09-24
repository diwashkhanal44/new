part of 'trending_news_cubit.dart';

@freezed
abstract class TrendingNewsState with _$TrendingNewsState {
  const factory TrendingNewsState.initial() = _Initial;

  const factory TrendingNewsState.loading() = _Loading;

  const factory TrendingNewsState.failed({required String failureMessage}) =
      _Failed;

  const factory TrendingNewsState.loaded(
      {required TrendingModel trendingNewsModel}) = _Loaded;
}
