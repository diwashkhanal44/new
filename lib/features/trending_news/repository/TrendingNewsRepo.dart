import 'package:dartz/dartz.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/trending_news/models/TrendingModel.dart';

class TrendingNewsRepo {
  final HttpCalls _httpCalls;
  TrendingNewsRepo({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  Future<Either<Failure, TrendingModel>> getTrending(
      {int? page, int? rowsPerPage, String? trend}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.trends.replaceAll("{trend}", "$trend"));

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(TrendingModel.fromJson(apiResponse));
    } catch (e) {
      if (e is ServerException) {
        return Left(ServerFailure(
            failureMessage: e.message,
            description: e.description,
            statusCode: e.statusCode));
      }
      return Left(UnknownFailure(failureMessage: '$e'));
    }
  }
}
