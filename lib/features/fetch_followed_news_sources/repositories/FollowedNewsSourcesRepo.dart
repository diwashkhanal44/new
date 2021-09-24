import 'package:dartz/dartz.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/fetch_followed_news_sources/models/NewsSourcesFollowed/NewsSourcesFollowed.dart';

class FollowedNewsSoourcesRepo {
  final HttpCalls _httpCalls;
  FollowedNewsSoourcesRepo({required HttpCalls httpCalls})
      : _httpCalls = httpCalls;

  Future<Either<Failure, NewsSourcesFollowed>> getFollowedNewsSources() async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.followedPublishers,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final apiResponse = await _httpCalls(
          url: uri.toString(), method: ApiCallMethod.GET, guarded: true);

      return Right(NewsSourcesFollowed.fromJson(apiResponse));
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
