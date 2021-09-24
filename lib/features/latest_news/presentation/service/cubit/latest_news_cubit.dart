import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';
import 'package:you/features/latest_news/repository/LatestNewsService.dart';

part 'latest_news_state.dart';

class LatestNewsCubit extends Cubit<LatestNewsState> {
  final _logger = Logger("LatestNewsCubit");

  final LatestNewsRepository _repository;

  LatestNewsCubit({required LatestNewsRepository repository})
      : _repository = repository,
        super(InitialLatestNews());

  fetch({int? page, int? rowsPerPage, required language}) async {
    _logger.info("fetch $page");

    final prevLocale = state.locale;

    if (page == null) emit(LoadingLatestNews(state.currentNews, language));

    final latestNews = await _repository.getTheLatestNews(
        page: page, rowsPerPage: rowsPerPage, language: language);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(FailedLatestNews(
          failureMessage: l.failureMessage,
          currentNews: state.currentNews,
          locale: language));
    }, (r) {
      _logger.info("loaded ");

      if (prevLocale == language) if (state.currentNews != null) {
        final prevNews = state.currentNews!.data;
        if (prevNews != null) {
          prevNews.reversed.forEach((element) {
            if (!(r.data!.contains(element))) {
              r.data?.insert(0, element);
            }
          });
        }
      }

      emit(LoadedLatestNews(r, language));
    });
  }

  void fetchNextPage({required String language}) {
    _logger.info("fetch next page ");
    if (state.currentNews == null)
      fetch(language: language);
    else
      fetch(
          language: language,
          page: state.currentNews!.meta!.current_page! + 1,
          rowsPerPage:
              int.tryParse(state.currentNews!.meta!.per_page!.toString()) ??
                  rowsPerPageDefault);
  }

  changeLanguage({required String language}) {
    _logger.info('fetching for langauge $language');
    fetch(language: language);
  }
}
