import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';
import 'package:you/features/latest_videos/services/GetVideos.dart';

part 'publisher_video_state.dart';
part 'publisher_video_cubit.freezed.dart';

class PublisherVideoCubit extends Cubit<PublisherVideoState> {
  GetVideosRepo _getVideosRepo;
  Logger _logger = Logger("PublisherVideoCubit");

  PublisherVideoCubit({required GetVideosRepo getVideosRepo})
      : _getVideosRepo = getVideosRepo,
        super(PublisherVideoState.initial());

  fetch({int? page, int? rowsPerPage, required int publisherID}) async {
    final stateBeforeFetching = state;

    _logger.info("fetch $page");

    if (page == null) emit(PublisherVideoState.loading());

    final latestNews = await _getVideosRepo.getAllLatestVideos(
        publisherID: publisherID, page: page, rowsPerPage: rowsPerPage);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(PublisherVideoState.failure(
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

      emit(PublisherVideoState.loaded(allVideos: r));
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
          page: loaded.allVideos.meta!.current_page! + 1,
          rowsPerPage:
              int.tryParse(loaded.allVideos.meta!.per_page!.toString()) ??
                  rowsPerPageDefault);
    }, loading: (loading) {
      //do nothing
    });
  }
}
