part of 'saved_news_cubit.dart';

abstract class SavedNewsState extends Equatable {
  final NewsModel? currentSavedNews;

  SavedNewsState(this.currentSavedNews);
}

class InitialSavedNews extends SavedNewsState {
  InitialSavedNews() : super(null);

  @override
  List<Object?> get props => [currentSavedNews];
}

class LoadingSavedNews extends SavedNewsState {
  LoadingSavedNews(NewsModel? currentSavedNews) : super(currentSavedNews);

  @override
  List<Object?> get props => [currentSavedNews];
}

class LoadedSavedNews extends SavedNewsState {
  LoadedSavedNews(NewsModel? currentSavedNews) : super(currentSavedNews);

  @override
  List<Object?> get props => [currentSavedNews];
}

class FailedSavedNews extends SavedNewsState {
  final String failureMessage;
  FailedSavedNews({
    NewsModel? currentSavedNews,
    required this.failureMessage,
  }) : super(currentSavedNews);

  @override
  List<Object?> get props => [currentSavedNews, failureMessage];
}
