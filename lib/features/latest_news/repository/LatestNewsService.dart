import 'package:dartz/dartz.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';

class LatestNewsRepository {
  final HttpCalls _httpCalls;
  LatestNewsRepository({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  Future<Either<Failure, NewsModel>> getTheLatestNews(
      {int? page, int? rowsPerPage, required String language}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          path: Endpoints.latestNews.replaceAll('{language}', language),
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          queryParameters: {
            "page": (page ?? 1).toString(),
            "rowsPerPage": (rowsPerPage ?? rowsPerPageDefault).toString()
          });

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(NewsModel.fromJson(apiResponse));
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
