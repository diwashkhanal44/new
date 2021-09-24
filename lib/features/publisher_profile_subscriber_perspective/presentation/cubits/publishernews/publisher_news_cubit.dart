import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/repositories/PublisherRepository.dart';

part 'publisher_news_state.dart';
part 'publisher_news_cubit.freezed.dart';

class PublisherNewsCubit extends Cubit<PublisherNewsState> {
  PublisherNewsCubit({required PublisherRepository repository})
      : _repository = repository,
        super(PublisherNewsState.initial());

  final _logger = Logger("PublisherNewsCubit");

  final PublisherRepository _repository;

  fetch({required int publisherID, int? page, int? rowsPerPage}) async {
    final stateBeforeFetching = state;

    _logger.info("fetch $page");

    if (page == null) emit(PublisherNewsState.loading());

    final latestNews = await _repository.getThePublishersNews(
        publisherID: publisherID, page: page, rowsPerPage: rowsPerPage);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(PublisherNewsState.failed(
        failureMessage: l.failureMessage,
      ));
    }, (r) {
      _logger.info("loaded ");

      // this is useful for pagination
      stateBeforeFetching.maybeWhen(
          orElse: () {},
          loaded: (previousNews) {
            previousNews.data?.reversed.forEach((element) {
              if (!(r.data!.contains(element))) {
                r.data?.insert(0, element);
              }
            });
          });

      emit(PublisherNewsState.loaded(news: r));
    });
  }

  void fetchNextPage(int publisherID) {
    _logger.info("fetch next page ");

    state.maybeMap(orElse: () {
      // failed and initial fetch 1
      fetch(publisherID: publisherID);
    }, loaded: (loaded) {
      // fetch next

      fetch(
          publisherID: publisherID,
          page: loaded.news.meta!.current_page! + 1,
          rowsPerPage: int.tryParse(loaded.news.meta!.per_page!.toString()) ??
              rowsPerPageDefault);
    }, loading: (loading) {
      //do nothing
    });
  }
}
