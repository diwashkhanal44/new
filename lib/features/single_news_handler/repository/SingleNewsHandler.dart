import 'package:dartz/dartz.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/single_news_handler/models/SingleNewsDetails/SingleNewsDetails.dart';

class SingleNewsHanlderRepository {
  final HttpCalls _httpCalls;

  SingleNewsHanlderRepository(this._httpCalls);

// fetch single news details

  Future<Either<Failure, SingleNewsDetails>> getTheSingleNewsDetails(
      {required int newsId}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.singleNewsView.replaceAll('{id}', newsId.toString()));

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(SingleNewsDetails.fromJson(apiResponse));
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

// update reactions

  Future<Either<Failure, String>> updateReactionInAsession(
      {required int reactionId, required String newReaction}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.updateReactionOnASession
              .replaceAll('{reactionId}', reactionId.toString()));

      final apiResponse = await _httpCalls(
          url: uri.toString(),
          method: ApiCallMethod.POST,
          body: {"reaction": newReaction});

      return Right(apiResponse["message"]);
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

// store reactions

  Future<Either<Failure, String>> storeReactionInAsession(
      {required int newsId, required String newReaction}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.storeReactionOnASession
              .replaceAll('{newsid}', newsId.toString()));

      final apiResponse = await _httpCalls(
          url: uri.toString(),
          method: ApiCallMethod.POST,
          body: {"reaction": newReaction});

      return Right(apiResponse["message"]);
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

  Future<Either<Failure, String>> addClickCount({required int newsId}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.clickCount.replaceAll('{newsid}', newsId.toString()));

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.POST);

      return Right(apiResponse["message"]);
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

// follow news soruce
  Future<Either<Failure, String>> followSourceOrFeed(
      {required int sourceIdOrFeedId}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.followSourceAndFeed
              .replaceAll('{source|feedid}', sourceIdOrFeedId.toString()));
      final apiResponse = await _httpCalls(
          url: uri.toString(), method: ApiCallMethod.POST, guarded: true);
      return Right("followed ");
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

// follow news soruce
  Future<Either<Failure, String>> bookMark({required int newsId}) async {
    //TODO
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.saveNews.replaceAll('{newsid}', newsId.toString()));

      final apiResponse = await _httpCalls(
          url: uri.toString(), method: ApiCallMethod.POST, guarded: true);
      return Right("followed ");
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

  // follow news soruce
  Future<Either<Failure, String>> bookMarkRemove({required int newsId}) async {
    //TODO
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          path: Endpoints.saveRemoveNews
              .replaceAll('{newsid}', newsId.toString()));

      final apiResponse = await _httpCalls(
          url: uri.toString(), method: ApiCallMethod.POST, guarded: true);
      return Right("removed ");
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
