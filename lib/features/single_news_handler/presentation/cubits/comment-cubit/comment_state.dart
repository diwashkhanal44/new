part of 'comment_cubit.dart';

class CommentState extends Equatable {
  final NewsCommentsModel? newsCommentsModel;
  final NewsCommentRepliesModel? lastFetchNewsCommentRepliesModel;

  CommentState({
    this.newsCommentsModel,
    this.lastFetchNewsCommentRepliesModel,
  });
  @override
  List<Object?> get props =>
      [newsCommentsModel, lastFetchNewsCommentRepliesModel];
}
