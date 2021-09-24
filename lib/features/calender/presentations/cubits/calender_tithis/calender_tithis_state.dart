part of 'calender_tithis_cubit.dart';

@freezed
abstract class CalenderTithisState with _$CalenderTithisState {
  const factory CalenderTithisState.initial(
      {required NepaliDate selectedDate}) = _Initial;
  const factory CalenderTithisState.loading(
      {required NepaliDate selectedDate}) = _Loading;
  const factory CalenderTithisState.loaded({
    required Tithis? tithis,
    required HolidaysOrEvents? holidaysOrEvents,
    required NepaliDate selectedDate,
  }) = _Loaded;

  const factory CalenderTithisState.failed(
      {required NepaliDate selectedDate,
      required String failureMessage}) = _Failed;
}
