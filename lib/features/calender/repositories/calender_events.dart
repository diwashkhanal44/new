import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/calender/models/NepaliDate.dart';
import 'package:you/features/calender/models/Tithis.dart';
import 'package:you/features/calender/presentations/CalenderShutter.dart';

class CalenderDateRepository {
  final HttpCalls _httpCalls;
  final SharedPreferences _sharedPreferences;
  CalenderDateRepository(
      {required HttpCalls httpCalls,
      required SharedPreferences sharedPreferences})
      : _httpCalls = httpCalls,
        _sharedPreferences = sharedPreferences;

  Future<Either<Failure, Tithis>> getTithis(NepaliDate nepaliDate) async {
    // try {
    final cachedTithis = _getCachedTithis(nepaliDate);

    if (cachedTithis != null) {
      _getRemoteTithis(nepaliDate);
      return Right(cachedTithis);
    }
    final remoteTithis = await _getRemoteTithis(nepaliDate);
    return Right(remoteTithis);
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

  Future<Tithis> _getRemoteTithis(NepaliDate nepaliDate) async {
    final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.calender_tithis,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
        queryParameters: {
          "year": "${nepaliDate.year}",
          "month": "${nepaliDate.month}"
        });

    final apiResponse =
        await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

    final remoteTithis = Tithis.fromJson(apiResponse);

    _cacheTithis(nepaliDate, remoteTithis);
    return remoteTithis;
  }

  Future<bool> _cacheTithis(NepaliDate nepaliDate, Tithis toSave) async {
    final saveStatus = await _sharedPreferences.setString(
        "CalenderDateRepository-${nepaliDate.year}-${nepaliDate.month}",
        jsonEncode(toSave.toJson()));

    return saveStatus;
  }

  Tithis? _getCachedTithis(NepaliDate nepaliDate) {
    final cachedTithisString = _sharedPreferences.getString(
        'CalenderDateRepository-${nepaliDate.year}-${nepaliDate.month}');

    if (cachedTithisString != null) {
      return Tithis.fromJson(jsonDecode(cachedTithisString));
    }
  }
}
