import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';
import 'package:you/features/profile/repositories/saved_news.dart';
part 'saved_news_state.dart';

class SavedNewsCubit extends Cubit<SavedNewsState> {
  final _logger = Logger("SavedNewsCubit");

  final SavedNewsRepository _repository;

  SavedNewsCubit({required SavedNewsRepository repository})
      : _repository = repository,
        super(InitialSavedNews());

  fetch({int? page, int? rowsPerPage}) async {
    _logger.info("fetch $page");

    if (page == null) emit(LoadingSavedNews(state.currentSavedNews));

    final latestNews =
        await _repository.getTheSavedNews(page: page, rowsPerPage: rowsPerPage);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(FailedSavedNews(
        failureMessage: l.failureMessage,
        currentSavedNews: state.currentSavedNews,
      ));
    }, (r) {
      _logger.info("loaded ");

      if (state.currentSavedNews != null) {
        final prevNews = state.currentSavedNews!.data;
        if (prevNews != null) {
          prevNews.reversed.forEach((element) {
            if (!(r.data!.contains(element))) {
              r.data?.insert(0, element);
            }
          });
        }
      }

      emit(LoadedSavedNews(
        r,
      ));
    });
  }

  void fetchnew() async {
    _logger.info("fetch ");

    emit(LoadingSavedNews(state.currentSavedNews));

    final latestNews = await _repository.getTheSavedNews(
        page: null, rowsPerPage: rowsPerPageDefault);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(FailedSavedNews(
        failureMessage: l.failureMessage,
        currentSavedNews: state.currentSavedNews,
      ));
    }, (r) {
      _logger.info("loaded ");

      emit(LoadedSavedNews(
        r,
      ));
    });
  }

  void fetchNextPage() {
    _logger.info("fetch next page ");
    if (state.currentSavedNews == null)
      fetch();
    else
      fetch(
          page: state.currentSavedNews!.meta!.current_page! + 1,
          rowsPerPage: int.tryParse(
                  state.currentSavedNews!.meta!.per_page!.toString()) ??
              rowsPerPageDefault);
  }
}
