import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/news_language/models/LanguageModel.dart';
import 'package:you/features/news_language/repository/NewsLanguageRepository.dart';

part 'news_languages_state.dart';
part 'news_languages_cubit.freezed.dart';

class NewsLanguagesCubit extends Cubit<NewsLanguagesState> {
  final _logger = Logger('NewsLanguagesCubit');
  final NewsLanguageRepository _repository;
  NewsLanguagesCubit({required NewsLanguageRepository repository})
      : _repository = repository,
        super(NewsLanguagesState.initial());

  fetch() async {
    try {
      _logger.info('loading');
      emit(NewsLanguagesState.loading());

      final newsLanguagesResponse = await _repository.getTheNewsLanguage();

      newsLanguagesResponse.fold(
          (l) => {
                _logger.severe(l.failureMessage),
                emit(
                    NewsLanguagesState.failed(failureMessage: l.failureMessage))
              },
          (r) => {
                _logger.info('loaded'),
                emit(NewsLanguagesState.loaded(newsnewsLanguages: r))
              });
    } catch (e) {
      _logger.severe("$e");
      emit(NewsLanguagesState.failed(failureMessage: "Error OCcured"));
    }
  }
}
