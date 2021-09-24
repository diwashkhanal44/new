part of 'breaking_news_cubit.dart';

@freezed
class BreakingNewsState with _$BreakingNewsState {
  const factory BreakingNewsState.initial() = _Initial;

  const factory BreakingNewsState.loading() = _Loading;

  const factory BreakingNewsState.failed({required String failureMessage}) =
      _Failed;

  const factory BreakingNewsState.loaded(
      {required TrendingModel breakingNewsModel}) = _Loaded;
}
