part of 'latest_news_cubit.dart';

abstract class LatestNewsState extends Equatable {
  final NewsModel? currentNews;
  final String? locale;

  LatestNewsState(this.currentNews, this.locale);
}

class InitialLatestNews extends LatestNewsState {
  InitialLatestNews() : super(null, null);

  @override
  List<Object?> get props => [currentNews, locale];
}

class LoadingLatestNews extends LatestNewsState {
  LoadingLatestNews(NewsModel? currentNews, String locale)
      : super(currentNews, locale);

  @override
  List<Object?> get props => [currentNews, locale];
}

class LoadedLatestNews extends LatestNewsState {
  LoadedLatestNews(NewsModel? currentNews, String locale)
      : super(currentNews, locale);

  @override
  List<Object?> get props => [currentNews, locale];
}

class FailedLatestNews extends LatestNewsState {
  final String failureMessage;
  FailedLatestNews(
      {NewsModel? currentNews,
      required this.failureMessage,
      required String locale})
      : super(currentNews, locale);

  @override
  List<Object?> get props => [currentNews, failureMessage, locale];
}
