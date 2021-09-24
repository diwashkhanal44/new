import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/calender/models/HolidaysOrEvents.dart';
import 'package:you/features/calender/models/NepaliDate.dart';

class CalenderHolidayRepo {
  final HttpCalls _httpCalls;
  final SharedPreferences _sharedPreferences;
  CalenderHolidayRepo(
      {required HttpCalls httpCalls,
      required SharedPreferences sharedPreferences})
      : _httpCalls = httpCalls,
        _sharedPreferences = sharedPreferences;

  Future<Either<Failure, HolidaysOrEvents>> getHolidaysOrEvents(
      NepaliDate nepaliDate) async {
    // try {
    final cachedHolidaysOrEvents = _getCachedHolidaysOrEvents(nepaliDate);

    if (cachedHolidaysOrEvents != null) {
      _getRemoteHolidaysOrEvents(nepaliDate);
      return Right(cachedHolidaysOrEvents);
    }
    final remoteHolidaysOrEvents = await _getRemoteHolidaysOrEvents(nepaliDate);
    return Right(remoteHolidaysOrEvents);
    // } catch (e) {
    //   if (e is ServerException) {
    //     return Left(ServerFailure(
    //         failureMessage: e.message,
    //         description: e.description,
    //         statusCode: e.statusCode));
    //   }
    //   return Left(UnknownFailure(failureMessage: '$e'));
    // }
  }

  Future<HolidaysOrEvents> _getRemoteHolidaysOrEvents(
      NepaliDate nepaliDate) async {
    final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.calender_holidays_events,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
        queryParameters: {
          "year": "${nepaliDate.year}",
          "month": "${nepaliDate.month}",
        });

    final apiResponse =
        await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

    final remoteHolidaysOrEvents = HolidaysOrEvents.fromJson(apiResponse);

    _cacheHolidaysOrEvents(nepaliDate, remoteHolidaysOrEvents);
    return remoteHolidaysOrEvents;
  }

  Future<bool> _cacheHolidaysOrEvents(
      NepaliDate nepaliDate, HolidaysOrEvents toSave) async {
    final saveStatus = await _sharedPreferences.setString(
        "CalenderDateRepository-${nepaliDate.year}-${nepaliDate.month}",
        holidaysOrEventsToJson(toSave));
    return saveStatus;
  }

  HolidaysOrEvents? _getCachedHolidaysOrEvents(NepaliDate nepaliDate) {
    final cachedHolidaysOrEventsString = _sharedPreferences.getString(
        'CalenderHolidayRepo-${nepaliDate.year}-${nepaliDate.month}');

    if (cachedHolidaysOrEventsString != null) {
      return holidaysOrEventsFromJson(cachedHolidaysOrEventsString);
    }
  }
}
