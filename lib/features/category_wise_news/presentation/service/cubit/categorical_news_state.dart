part of 'categorical_news_cubit.dart';

abstract class CategoricalNewsState extends Equatable {
  final NewsModel? currentNews;
  final String? categoricalSlug;

  CategoricalNewsState(this.currentNews, this.categoricalSlug);
}

class InitialCategoricalNews extends CategoricalNewsState {
  InitialCategoricalNews() : super(null, null);

  @override
  List<Object?> get props => [currentNews, categoricalSlug];
}

class LoadingCategoricalNews extends CategoricalNewsState {
  LoadingCategoricalNews(NewsModel? currentNews, String categoricalSlug)
      : super(currentNews, categoricalSlug);

  @override
  List<Object?> get props => [currentNews, categoricalSlug];
}

class LoadedCategoricalNews extends CategoricalNewsState {
  LoadedCategoricalNews(NewsModel? currentNews, String categoricalSlug)
      : super(currentNews, categoricalSlug);

  @override
  List<Object?> get props => [currentNews, categoricalSlug];
}

class FailedCategoricalNews extends CategoricalNewsState {
  final String failureMessage;
  FailedCategoricalNews(
      {NewsModel? currentNews,
      required this.failureMessage,
      required String categoricalSlug})
      : super(currentNews, categoricalSlug);

  @override
  List<Object?> get props => [currentNews, failureMessage, categoricalSlug];
}
