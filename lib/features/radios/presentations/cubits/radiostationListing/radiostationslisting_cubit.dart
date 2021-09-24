import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/radios/models/RadiosModel.dart';
import 'package:you/features/radios/services/RadioServices.dart';

part 'radiostationslisting_state.dart';
part 'radiostationslisting_cubit.freezed.dart';

class RadiostationslistingCubit extends Cubit<RadiostationslistingState> {
  RadioServices _radioServices;
  Logger _logger = Logger("GetVideoRepo");

  RadiostationslistingCubit({required RadioServices radioServices})
      : _radioServices = radioServices,
        super(RadiostationslistingState.initial());

  fetch({int? page, int? rowsPerPage}) async {
    final stateBeforeFetching = state;

    _logger.info("fetch $page");

    if (page == null) emit(RadiostationslistingState.loading());

    final latestNews = await _radioServices.getRadioStations(
        page: page, rowsPerPage: rowsPerPage);

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(RadiostationslistingState.failure(
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

      emit(RadiostationslistingState.loaded(allStations: r));
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
          page: loaded.allStations.meta!.current_page! + 1,
          rowsPerPage:
              int.tryParse(loaded.allStations.meta!.per_page!.toString()) ??
                  rowsPerPageDefault);
    }, loading: (loading) {
      //do nothing
    });
  }
}
