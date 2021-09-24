import 'package:dartz/dartz.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';

class GetVideosRepo {
  final HttpCalls _httpCalls;
  GetVideosRepo({required HttpCalls httpCalls}) : _httpCalls = httpCalls;

  /// get videos all if publisher id is not defined
  Future<Either<Failure, VideoModel>> getAllLatestVideos(
      {int? page, int? rowsPerPage, int? publisherID}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          path: publisherID == null
              ? Endpoints.videos
              : Endpoints.videosPublisher
                  .replaceAll("{publisherId}", "$publisherID"),
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          queryParameters: {
            "page": (page ?? 1).toString(),
            "rowsPerPage": (rowsPerPage ?? rowsPerPageDefault).toString()
          });

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(VideoModel.fromJson(apiResponse));
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
