import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:dartz/dartz.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/features/single_news_handler/models/NewCommentResponse/NewCommentResponse.dart';
import 'package:you/features/single_news_handler/models/NewsCommentRepliesModel/NewsCommentRepliesModel.dart';
import 'package:you/features/single_news_handler/models/NewsCommentsModel/NewsCommentsModel.dart';
import 'package:you/features/single_news_handler/models/ReplyCommentResponse/ReplyCommentResponse.dart';

class CommentHandler {
  final HttpCalls _httpCalls;

  CommentHandler({required HttpCalls httpCalls}) : _httpCalls = httpCalls;
  //get comments

  Future<Either<Failure, NewsCommentsModel>> getMainComments(
      {int? page, int? rowsPerPage, required int newsId}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          path: Endpoints.fetchMainComments
              .replaceAll('{newsId}', newsId.toString()),
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          queryParameters: {
            "page": (page ?? 1).toString(),
            "rowsPerPage": (rowsPerPage ?? rowsPerPageDefault).toString()
          });

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(NewsCommentsModel.fromJson(apiResponse));
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

  // get comment replies
  Future<Either<Failure, NewsCommentRepliesModel>> getReplyComments(
      {int? page, int? rowsPerPage, required int commentId}) async {
    try {
      final uri = Uri(
          scheme: Endpoints.scheme,
          path: Endpoints.fetchReplyComments
              .replaceAll('{commentId}', commentId.toString()),
          host: Endpoints.basePortLess,
          port: Endpoints.port,
          queryParameters: {
            "page": (page ?? 1).toString(),
            "rowsPerPage": (rowsPerPage ?? rowsPerPageDefault).toString()
          });

      final apiResponse =
          await _httpCalls(url: uri.toString(), method: ApiCallMethod.GET);

      return Right(NewsCommentRepliesModel.fromJson(apiResponse));
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

  // only subscriber role can perform this task
  Future<Either<Failure, NewCommentResponse>> postComment(
      {required String comment, required int newsId}) async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.postMainComment,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );
      final body = {"comment": comment, "news_id": newsId.toString()};
      final apiResponse = await _httpCalls(
          url: uri.toString(),
          method: ApiCallMethod.POST,
          body: body,
          guarded: true);

      return Right(NewCommentResponse.fromJson(apiResponse));
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

  // only subscriber role can perform this task
  Future<Either<Failure, ReplyCommentResponse>> postReplyComment(
      {required String comment, required int commentId, int? replyID}) async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path:
            Endpoints.postReplyComment.replaceAll('{commentId}', '$commentId'),
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final body = {"comment": comment, "parent_id": '$commentId'};
      if (replyID != null) body.addAll({"reply_id": "$replyID"});

      final apiResponse = await _httpCalls(
          url: uri.toString(),
          method: ApiCallMethod.POST,
          body: body,
          guarded: true);

      return Right(ReplyCommentResponse.fromJson(apiResponse));
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

  // only subscriber role can perform this task and owner
  Future<Either<Failure, String>> deleteComment(
      {required int commentId}) async {
    try {
      final uri = Uri(
        scheme: Endpoints.scheme,
        path: Endpoints.deleteComment,
        host: Endpoints.basePortLess,
        port: Endpoints.port,
      );

      final body = {"delete_rows": commentId};

      final apiResponse = await _httpCalls(
          url: uri.toString(),
          method: ApiCallMethod.POST,
          body: body,
          guarded: true);

      return Right(apiResponse["message"] as String);
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
