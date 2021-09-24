import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/trending_news/models/TrendingModel.dart';
import 'package:you/features/trending_news/repository/TrendingNewsRepo.dart';

part 'breaking_news_state.dart';
part 'breaking_news_cubit.freezed.dart';

class BreakingNewsCubit extends Cubit<BreakingNewsState> {
  final _logger = Logger("BreakingNewsCubit");
  final TrendingNewsRepo _breakingNewsRepo;

  BreakingNewsCubit({required TrendingNewsRepo breakingNewsRepo})
      : _breakingNewsRepo = breakingNewsRepo,
        super(BreakingNewsState.initial());

  getBreakingNews() async {
    _logger.info("getBreakingNews");
    emit(BreakingNewsState.loading());

    final breakingNews =
        await _breakingNewsRepo.getTrending(trend: "breaking-news");

    breakingNews.fold(
        (l) => {
              _logger.severe(l.failureMessage),
              emit(BreakingNewsState.failed(failureMessage: l.failureMessage))
            },
        (r) => {
              emit(BreakingNewsState.loaded(breakingNewsModel: r)),
              _logger.info("${state.runtimeType}")
            });
  }
}
