import 'package:dartz/dartz.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/profile/models/ActivityModel.dart';

class ActivityRepository {
  final HttpCalls _httpCalls;
  ActivityRepository({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  Future<Either<Failure, ActivityModel>> getTheActivity(
      {int? page, int? rowsPerPage}) async {
    // try {
    final uri = Uri(
      scheme: Endpoints.scheme,
      path: Endpoints.activityLogs,
      host: Endpoints.basePortLess,
      port: Endpoints.port,
      queryParameters: {
        "page": (page ?? 1).toString(),
        "rowsPerPage": (rowsPerPage ?? rowsPerPageDefault).toString()
      },
    );

    final apiResponse = await _httpCalls(
        url: uri.toString(), method: ApiCallMethod.GET, guarded: true);

    return Right(ActivityModel.fromJson(apiResponse));
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
}
