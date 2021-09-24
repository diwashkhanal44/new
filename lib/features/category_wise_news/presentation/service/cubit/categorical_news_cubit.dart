import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/category_wise_news/repository/CategoryWiseNews.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';

part 'categorical_news_state.dart';

class CategoricalNewsCubit extends Cubit<CategoricalNewsState> {
  final _logger = Logger("CategoricalNewsCubit");
  final SharedPreferences _sharedPreferences;
  final CategoryWiseNewsRepository _repository;
  CategoricalNewsCubit(
      {required CategoryWiseNewsRepository repository,
      required SharedPreferences sharedPreferences})
      : _repository = repository,
        _sharedPreferences = sharedPreferences,
        super(InitialCategoricalNews());

  fetch({
    int? page,
    int? rowsPerPage,
    required String categoricalSlug,
    required NewsType newsType,
  }) async {
    _logger.info("fetch $page for $categoricalSlug");

    if (page == null) {
      emit(LoadingCategoricalNews(
          state.currentNews, state.categoricalSlug ?? categoricalSlug));

      _logger.info("reading bloc from cache $categoricalSlug");
      final stateData = _sharedPreferences.getString(categoricalSlug);
      if (stateData != null) {
        emit(LoadedCategoricalNews(latestNewsModelFromJson(stateData),
            Random.secure().nextDouble().toString()));
        _logger.info("cached loaded");
      }
    }

    final categoricalNews = await _repository.getCategoryWiseNews(
        page: page,
        rowsPerPage: rowsPerPage,
        categorySlug: state.categoricalSlug ?? categoricalSlug,
        newsType: newsType);

    categoricalNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(FailedCategoricalNews(
          failureMessage: l.failureMessage,
          currentNews: state.currentNews,
          categoricalSlug: state.categoricalSlug ?? categoricalSlug));
    }, (r) {
      _logger.info("loaded ");

      if (state.currentNews != null) {
        final prevNews = state.currentNews!.data;
        if (prevNews != null) {
          prevNews.reversed.forEach((element) {
            if (!(r.data!.contains(element))) {
              r.data?.insert(0, element);
            }
          });
        }
      }
      _logger.info("fetch done $page for $categoricalSlug");
      emit(LoadedCategoricalNews(r, state.categoricalSlug ?? categoricalSlug));
      _write(r, categoricalSlug);
    });
  }

  void fetchNextPage({
    required String categoricalSlug,
    required NewsType newsType,
  }) {
    _logger.info("fetch next page ");
    if (state.currentNews == null)
      fetch(
          categoricalSlug: state.categoricalSlug ?? categoricalSlug,
          newsType: newsType);
    else
      fetch(
          categoricalSlug: state.categoricalSlug ?? categoricalSlug,
          page: state.currentNews!.meta!.current_page! + 1,
          rowsPerPage:
              int.tryParse(state.currentNews!.meta!.per_page!.toString()) ??
                  rowsPerPageDefault,
          newsType: newsType);
  }

  void _write(NewsModel news, String category) async {
    _logger.info("writing bloc to cache $category");
    await _sharedPreferences.setString(
      category,
      latestNewsModelToJson(news),
    );
  }
}
