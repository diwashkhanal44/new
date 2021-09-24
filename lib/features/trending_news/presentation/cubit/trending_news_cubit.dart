import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/trending_news/models/TrendingModel.dart';
import 'package:you/features/trending_news/repository/TrendingNewsRepo.dart';

part 'trending_news_state.dart';
part 'trending_news_cubit.freezed.dart';

class TrendingNewsCubit extends Cubit<TrendingNewsState> {
  final _logger = Logger("TrendingNewsCubit");
  final TrendingNewsRepo _trendingNewsRepo;

  TrendingNewsCubit({required TrendingNewsRepo trendingNewsRepo})
      : _trendingNewsRepo = trendingNewsRepo,
        super(TrendingNewsState.initial());

  getTrendingNews() async {
    emit(TrendingNewsState.loading());

    final trendingNews =
        await _trendingNewsRepo.getTrending(trend: "trendings");

    trendingNews.fold(
        (l) => {
              _logger.severe(l.failureMessage),
              emit(TrendingNewsState.failed(failureMessage: l.failureMessage))
            },
        (r) => {
              emit(TrendingNewsState.loaded(trendingNewsModel: r)),
              _logger.info("${state.runtimeType}")
            });
  }
}
