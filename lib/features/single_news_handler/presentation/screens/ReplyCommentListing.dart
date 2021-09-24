import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timeago/timeago.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/single_news_handler/models/NewsCommentRepliesModel/NewsCommentRepliesModel.dart';
import 'package:you/features/single_news_handler/presentation/cubits/comment-cubit/comment_cubit.dart';
import 'package:you/routes/auto_router.gr.dart' hide ReplyCommentListing;

class ReplyCommentListing extends StatelessWidget {
  final int commentId;
  const ReplyCommentListing({Key? key, required this.commentId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CommentCubit>(),
      child: _ReplyCommentListing(commentId),
    );
  }
}

// ignore: must_be_immutable
class _ReplyCommentListing extends HookWidget {
  final int commentId;
  _ReplyCommentListing(this.commentId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentCubit, CommentState>(builder: (context, state) {
      if (state.lastFetchNewsCommentRepliesModel == null)
        BlocProvider.of<CommentCubit>(context)
            .fetchReplyComment(commentId: commentId);

      if (state.lastFetchNewsCommentRepliesModel == null) {
        return LoadingWidget();
      } else {
        return ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<CommentCubit>(context)
                    .fetchReplyComment(commentId: commentId);
                return await Future.delayed(Duration(seconds: 3));
              },
              child: state.lastFetchNewsCommentRepliesModel!.data!.isNotEmpty
                  ? ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      cacheExtent: 0,
                      padding: EdgeInsets.only(top: 5),
                      itemBuilder: (context, index) {
                        return CommentTile(
                          comment: state
                              .lastFetchNewsCommentRepliesModel!.data![index],
                          parentCommentId: commentId,
                        );
                      },
                      itemCount:
                          state.lastFetchNewsCommentRepliesModel!.data!.length,
                    )
                  : _loadFailedOrNoCommentsBuild(context),
            ),
            if (state.lastFetchNewsCommentRepliesModel!.meta!.last_page !=
                state.lastFetchNewsCommentRepliesModel!.meta!.current_page)
              TextButton(
                  onPressed: () {
                    BlocProvider.of<CommentCubit>(context)
                        .fetchNextPageReplyComment(commentId);
                  },
                  child: Row(
                    children: [
                      Text("Show more replies"),
                    ],
                  ))
          ],
        );
      }
    });
  }

  Widget _loadFailedOrNoCommentsBuild(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "No Replied!!!\nBe the first one to reply.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      );
}

class CommentTile extends HookWidget {
  final Datum comment;
  final int parentCommentId;
  const CommentTile({
    Key? key,
    required this.comment,
    required this.parentCommentId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          onLongPress: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          CachedNetworkImageProvider(comment.commenter_image!),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(comment.commenter_name!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                              ),
                              Text(format(comment.created_at!))
                            ],
                          ),
                          Text(comment.commenter_username!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(fontSize: 16)),
                          SizedBox(height: 5),
                          Text(
                              comment.replyUserName != null
                                  ? '@${comment.replyUserName} '
                                  : '' + comment.comment!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(fontSize: 18)),
                          SizedBox(height: 5),
                          Row(children: [
                            TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.resolveWith(
                                        (states) => RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white70
                                                    : Colors.black54)))),
                                onPressed: () async {
                                  await AutoRouter.of(context).push(
                                      CreateNewComment(
                                          parentId: parentCommentId,
                                          replyId: comment.id));
                                  BlocProvider.of<CommentCubit>(context)
                                      .fetchReplyComment(
                                          commentId: parentCommentId);
                                },
                                child: Text("Reply")),
                            SizedBox(width: 5),
                            if (BlocProvider.of<AuthCubit>(context).state
                                is Authenticated)
                              if (BlocProvider.of<AuthCubit>(context)
                                      .state
                                      .userProfile
                                      ?.data
                                      ?.username ==
                                  comment.commenter_username)
                                TextButton(
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => Colors.red)),
                                  onPressed: () async {
                                    BotToast.showLoading();

                                    await BlocProvider.of<CommentCubit>(context)
                                        .deleteComment(comment.id!);
                                    BlocProvider.of<CommentCubit>(context)
                                        .fetchReplyComment(
                                            commentId: parentCommentId);
                                    BotToast.closeAllLoading();
                                  },
                                  child: Text("Delete"),
                                ),
                            SizedBox(width: 5),
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(height: 1),
      ],
    );
  }
}
