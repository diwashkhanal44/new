import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/single_news_handler/models/NewsCommentRepliesModel/NewsCommentRepliesModel.dart';
import 'package:you/features/single_news_handler/models/NewsCommentsModel/NewsCommentsModel.dart';
import 'package:you/features/single_news_handler/repository/CommentsHandler.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  final CommentHandler _commentHandler;

  CommentCubit({required CommentHandler commentHandler})
      : _commentHandler = commentHandler,
        super(CommentState());
  final _logger = Logger("CommentCubit");

  // fetchMainComments(int newsId, int pageNumber, int pagePerRow) {}

  // fetchReplyComments(int commentId, int pageNumber, int pagePerRow) {}

  /// return failure msg if any else null
  Future<String?> addComment(int newsId, String comment) async {
    // fetchMainComment

    final postComment =
        await _commentHandler.postComment(comment: comment, newsId: newsId);

    return postComment.fold((l) {
      _logger.severe('failed posting comment ${l.failureMessage}');
      return l.failureMessage;
    }, (r) {
      emit(state);
      return null;
    });
  }

  Future<String?> replyComment(
      int commentId, int? replyId, String comment) async {
    _logger.info({'replyComment', commentId, replyId});

    // fetchReplyComment
    final postComment = await _commentHandler.postReplyComment(
      comment: comment,
      commentId: commentId,
      replyID: replyId,
    );

    return postComment.fold((l) {
      _logger.severe('failed posting comment ${l.failureMessage}');
      return l.failureMessage;
    }, (r) {
      emit(state);
      return null;
    });
  }

  Future<String?> deleteComment(int commentId) async {
    // fetchReplyComment
    // fetchMainComment
    final postComment =
        await _commentHandler.deleteComment(commentId: commentId);

    return postComment.fold((l) {
      _logger.severe('failed posting comment ${l.failureMessage}');
      return l.failureMessage;
    }, (r) {
      emit(state);
      return null;
    });
  }

  fetchMainComment({int? page, int? rowsPerPage, required int newsId}) async {
    _logger.info("fetch $page");

    if (page == null)
      emit(CommentState(
        newsCommentsModel: state.newsCommentsModel,
        lastFetchNewsCommentRepliesModel:
            state.lastFetchNewsCommentRepliesModel,
      ));

    final mainComments = await _commentHandler.getMainComments(
        page: page, rowsPerPage: rowsPerPage, newsId: newsId);

    mainComments.fold((l) {
      _logger.severe("failure ${l.failureMessage}");
    }, (r) {
      _logger.info("loaded ");
      if (state.newsCommentsModel != null) {
        final prevComment = state.newsCommentsModel!.data;
        if (prevComment != null) {
          prevComment.reversed.forEach((element) {
            if (!(r.data!.contains(element))) {
              r.data?.insert(0, element);
            }
          });
        }
      }

      emit(CommentState(
          newsCommentsModel: r,
          lastFetchNewsCommentRepliesModel:
              state.lastFetchNewsCommentRepliesModel));
    });
  }

  void fetchNextPageMainComment(int newsId) {
    _logger.info("fetch next page ");
    if (state.newsCommentsModel == null)
      fetchMainComment(newsId: newsId);
    else
      fetchMainComment(
          page: state.newsCommentsModel!.meta!.current_page! + 1,
          rowsPerPage: int.tryParse(state.newsCommentsModel!.meta!.per_page!) ??
              rowsPerPageDefault,
          newsId: newsId);
  }

// ----
  fetchReplyComment(
      {int? page, int? rowsPerPage, required int commentId}) async {
    _logger.info("fetch replies $page");

    if (page == null)
      emit(CommentState(
          newsCommentsModel: state.newsCommentsModel,
          lastFetchNewsCommentRepliesModel:
              state.lastFetchNewsCommentRepliesModel));

    final fetchReply = await _commentHandler.getReplyComments(
        page: page, rowsPerPage: rowsPerPage, commentId: commentId);

    fetchReply.fold((l) {
      _logger.severe("reply failure ${l.failureMessage}");
    }, (r) {
      _logger.info("reply loaded ");
      if (state.newsCommentsModel != null) {
        final prevComment = state.lastFetchNewsCommentRepliesModel!.data;

        if (prevComment != null) {
          prevComment.reversed.forEach((element) {
            if (!(r.data!.contains(element))) {
              r.data?.insert(0, element);
            }
          });
        }
      }

      emit(CommentState(
          newsCommentsModel: state.newsCommentsModel,
          lastFetchNewsCommentRepliesModel: r));
    });
  }

  void fetchNextPageReplyComment(int commentId) {
    _logger.info("reply fetch next page ");
    if (state.lastFetchNewsCommentRepliesModel == null)
      fetchReplyComment(commentId: commentId);
    else
      fetchReplyComment(
          page: state.lastFetchNewsCommentRepliesModel!.meta!.current_page! + 1,
          rowsPerPage: int.tryParse(
                  state.lastFetchNewsCommentRepliesModel!.meta!.per_page!) ??
              rowsPerPageDefault,
          commentId: commentId);
  }
}
