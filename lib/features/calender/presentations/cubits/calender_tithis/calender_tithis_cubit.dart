import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you/features/calender/models/HolidaysOrEvents.dart';
import 'package:you/features/calender/models/NepaliDate.dart';
import 'package:you/features/calender/models/Tithis.dart';
import 'package:you/features/calender/presentations/CalenderShutter.dart';
import 'package:you/features/calender/repositories/calender_events.dart';
import 'package:you/features/calender/repositories/calender_holiday_events_repo.dart';

part 'calender_tithis_state.dart';
part 'calender_tithis_cubit.freezed.dart';

class CalenderTithisCubit extends Cubit<CalenderTithisState> {
  CalenderTithisCubit(
      {required CalenderDateRepository calenderDateRepository,
      required CalenderHolidayRepo calenderHolidayRepo})
      : _calenderDateRepository = calenderDateRepository,
        _calenderHolidayRepo = calenderHolidayRepo,
        super(CalenderTithisState.initial(selectedDate: NepaliDate.now()));

  final CalenderDateRepository _calenderDateRepository;

  final CalenderHolidayRepo _calenderHolidayRepo;

//  fetchData({required NepaliDate nepaliDate}) async {
//     try {
//       _logger.info("fetchData");
//       final tithis = await _calenderDateRepository.getTithis(nepaliDate);
//       final holidays =
//           await _calenderHolidayRepo.getHolidaysOrEvents(nepaliDate);

//       emit(CalenderTithisState.loaded(
//           tithis: tithis.fold((l) => throw l, (r) => r),
//           selectedDate: _getCurrentDate(),
//           holidaysOrEvents: holidays.fold((l) => throw l, (r) => r)));

//       _logger.info("CalenderTithisState loaded");
//     } catch (e) {
//       if (e is Failure) {
//         emit(CalenderTithisState.loaded(
//             tithis: _getLoadedTithis(),
//             selectedDate: _getCurrentDate(),
//             holidaysOrEvents: _getLoadedHolidaysOrEvents()));
//         // emit(CalenderTithisState.failed(
//         //     selectedDate: _getCurrentDate(), failureMessage: e.failureMessage));
//       }

//       _logger.info("CalenderTithisState Failure $e");
//     }
//   }
  fetchData({required NepaliDate nepaliDate}) {
    _fetchTithisPerMonth(nepaliDate: nepaliDate);
    _fetchHolidays(nepaliDate: nepaliDate);
  }

  _fetchTithisPerMonth({required NepaliDate nepaliDate}) async {
    final tithis = await _calenderDateRepository.getTithis(nepaliDate);

    emit(tithis.fold(
        (l) => CalenderTithisState.failed(
            failureMessage: l.failureMessage, selectedDate: _getCurrentDate()),
        (r) => CalenderTithisState.loaded(
              tithis: r,
              selectedDate: _getCurrentDate(),
              holidaysOrEvents: _getLoadedHolidaysOrEvents(),
            )));
  }

  _fetchHolidays({required NepaliDate nepaliDate}) async {
    final tithis = await _calenderHolidayRepo.getHolidaysOrEvents(nepaliDate);

    emit(tithis.fold(
        (l) => CalenderTithisState.failed(
            failureMessage: l.failureMessage, selectedDate: _getCurrentDate()),
        (r) => CalenderTithisState.loaded(
            tithis: _getLoadedTithis(),
            selectedDate: _getCurrentDate(),
            holidaysOrEvents: r)));
  }

  changeDate({required NepaliDate newDate}) {
    emit(state.map(
        initial: (initial) =>
            CalenderTithisState.initial(selectedDate: newDate),
        loading: (loading) =>
            CalenderTithisState.loading(selectedDate: newDate),
        loaded: (loaded) => CalenderTithisState.loaded(
            tithis: loaded.tithis,
            selectedDate: newDate,
            holidaysOrEvents: loaded.holidaysOrEvents),
        failed: (failed) => CalenderTithisState.failed(
            selectedDate: newDate, failureMessage: failed.failureMessage)));
  }

  NepaliDate _getCurrentDate() {
    return state.map(
        initial: (initial) => initial.selectedDate,
        loading: (loading) => loading.selectedDate,
        loaded: (loaded) => loaded.selectedDate,
        failed: (failed) => failed.selectedDate);
  }

  Tithis? _getLoadedTithis() {
    return state.maybeMap(
        orElse: () => null, loaded: (loaded) => loaded.tithis);
  }

  HolidaysOrEvents? _getLoadedHolidaysOrEvents() {
    return state.maybeMap(
        orElse: () => null, loaded: (loaded) => loaded.holidaysOrEvents);
  }
}
