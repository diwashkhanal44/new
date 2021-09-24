part of 'news_languages_cubit.dart';

@freezed
abstract class NewsLanguagesState with _$NewsLanguagesState {
  const factory NewsLanguagesState.initial() = _Initial;

  const factory NewsLanguagesState.loading() = _Loading;

  const factory NewsLanguagesState.failed({required String failureMessage}) =
      _Failed;

  const factory NewsLanguagesState.loaded(
      {required LanguageModel newsnewsLanguages}) = _Loaded;
}
