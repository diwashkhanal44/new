import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/profile/models/ActivityModel.dart';
import 'package:you/features/profile/repositories/activity_timeline.dart';

part 'activitylogs_state.dart';

class ActivitylogsCubit extends Cubit<ActivityLogsState> {
  ActivitylogsCubit({required ActivityRepository repository})
      : _repository = repository,
        super(InitialActivityLogs());

  final Logger _logger = Logger("ActivitylogsCubit");
  final ActivityRepository _repository;

  fetch({int? page, int? rowsPerPage}) async {
    _logger.info("fetch $page");

    if (page == null) emit(LoadingActivityLogs(state.currentActivityLogs));

    final latestActivityLogs =
        await _repository.getTheActivity(page: page, rowsPerPage: rowsPerPage);

    latestActivityLogs.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(FailedActivityLogs(
        failureMessage: l.failureMessage,
        currentActivityLogs: state.currentActivityLogs,
      ));
    }, (r) {
      _logger.info("loaded ");
      if (state.currentActivityLogs != null) {
        final prevActivityLogs = state.currentActivityLogs!.data;
        if (prevActivityLogs != null) {
          prevActivityLogs.reversed.forEach((element) {
            if (!(r.data!.contains(element))) {
              r.data?.insert(0, element);
            }
          });
        }
      }
      emit(LoadedActivityLogs(r));
    });
  }

  void fetchNextPage() {
    _logger.info("fetch next page ");
    if (state.currentActivityLogs == null)
      fetch();
    else
      fetch(
          page: state.currentActivityLogs!.meta!.current_page! + 1,
          rowsPerPage: int.tryParse(
                  state.currentActivityLogs!.meta!.per_page!.toString()) ??
              rowsPerPageDefault);
  }
}
