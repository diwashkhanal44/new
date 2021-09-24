import 'package:dartz/dartz.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/news_sources/models/NewsSourceModel.dart';

class GetNewsSources {
  final HttpCalls _httpCalls;
  GetNewsSources({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  /// get videos all if publisher id is not defined
  Future<Either<Failure, NewsSourcesModel>> getNewsSources() async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.newsSources,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(NewsSourcesModel.fromJson(apiResponse));
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
