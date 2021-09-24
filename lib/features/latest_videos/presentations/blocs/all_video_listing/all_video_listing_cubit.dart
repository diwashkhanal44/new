import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';
import 'package:you/features/latest_videos/services/GetVideos.dart';
import 'package:logging/logging.dart';

part 'all_video_listing_state.dart';
part 'all_video_listing_cubit.freezed.dart';

class AllVideoListingCubit extends Cubit<AllVideoListingState> {
  GetVideosRepo _getVideosRepo;
  Logger _logger = Logger("GetVideoRepo");

  AllVideoListingCubit({required GetVideosRepo getVideosRepo})
      : _getVideosRepo = getVideosRepo,
        super(AllVideoListingState.initial());

  fetch({int? page, int? rowsPerPage}) async {
    final stateBeforeFetching = state;

    _logger.info("fetch $page");

    if (page == null) emit(AllVideoListingState.loading());

    final latestNews = await _getVideosRepo.getAllLatestVideos(
        page: page, rowsPerPage: rowsPerPage);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(AllVideoListingState.failure(
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

      emit(AllVideoListingState.loaded(allVideos: r));
    });
  }

  void fetchNextPage() {
    _logger.info("fetch next page ");

    state.maybeMap(orElse: () {
      // failed and initial fetch 1
      fetch();
    }, loaded: (loaded) {
      // fetch next

      fetch(
          page: loaded.allVideos.meta!.current_page! + 1,
          rowsPerPage:
              int.tryParse(loaded.allVideos.meta!.per_page!.toString()) ??
                  rowsPerPageDefault);
    }, loading: (loading) {
      //do nothing
    });
  }
}
