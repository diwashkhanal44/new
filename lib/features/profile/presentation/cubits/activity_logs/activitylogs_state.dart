part of 'activitylogs_cubit.dart';

abstract class ActivityLogsState extends Equatable {
  final ActivityModel? currentActivityLogs;

  ActivityLogsState(this.currentActivityLogs);
}

class InitialActivityLogs extends ActivityLogsState {
  InitialActivityLogs() : super(null);

  @override
  List<Object?> get props => [currentActivityLogs];
}

class LoadingActivityLogs extends ActivityLogsState {
  LoadingActivityLogs(ActivityModel? currentActivityLogs)
      : super(currentActivityLogs);

  @override
  List<Object?> get props => [currentActivityLogs];
}

class LoadedActivityLogs extends ActivityLogsState {
  LoadedActivityLogs(ActivityModel? currentActivityLogs)
      : super(currentActivityLogs);

  @override
  List<Object?> get props => [currentActivityLogs];
}

class FailedActivityLogs extends ActivityLogsState {
  final String failureMessage;
  FailedActivityLogs({
    ActivityModel? currentActivityLogs,
    required this.failureMessage,
  }) : super(currentActivityLogs);

  @override
  List<Object?> get props => [currentActivityLogs, failureMessage];
}
