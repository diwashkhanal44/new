import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timeago/timeago.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/latest_news/models/NewsModel.dart' as LNM;
import 'package:you/features/single_news_handler/models/NewsCommentsModel/NewsCommentsModel.dart';
import 'package:you/features/single_news_handler/presentation/cubits/comment-cubit/comment_cubit.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/routes/auto_router.gr.dart' hide ReplyCommentListing;

import 'ReplyCommentListing.dart';

class MainCommentsListing extends StatelessWidget {
  final int newsId;
  final LNM.Datum? newsEntity;
  const MainCommentsListing({Key? key, required this.newsId, this.newsEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<CommentCubit>()),
        BlocProvider(create: (context) => sl<SinglenewshandlerCubit>()),
      ],
      child: _MainCommentsListing(
        newsId,
        newsEntity: newsEntity,
      ),
    );
  }
}

// ignore: must_be_immutable
class _MainCommentsListing extends HookWidget {
  final int newsId;
  final LNM.Datum? newsEntity;

  _MainCommentsListing(this.newsId, {Key? key, this.newsEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Comments"),
          actions: [
            IconButton(
                onPressed: () => BlocProvider.of<CommentCubit>(context)
                    .fetchMainComment(newsId: newsId),
                icon: Icon(Icons.refresh))
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<CommentCubit>(context)
                .fetchMainComment(newsId: newsId);
            await Future.delayed(Duration(seconds: 3));
          },
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: [
                    if (newsEntity != null)
                      FullSizeNewsCard(
                        newsEntity: newsEntity!,
                        enableComment: false,
                      ),
                    if (newsEntity != null) Divider(),
                    SizedBox(height: 10),
                    BlocBuilder<CommentCubit, CommentState>(
                        builder: (context, state) {
                      if (state.newsCommentsModel == null)
                        BlocProvider.of<CommentCubit>(context)
                            .fetchMainComment(newsId: newsId);

                      if (state.newsCommentsModel == null) {
                        return LoadingWidget();
                      } else {
                        return ListView(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          children: [
                            RefreshIndicator(
                              onRefresh: () async {
                                BlocProvider.of<CommentCubit>(context)
                                    .fetchMainComment(newsId: newsId);
                                return await Future.delayed(
                                    Duration(seconds: 3));
                              },
                              child: state.newsCommentsModel!.data!.isNotEmpty
                                  ? ListView.builder(
                                      shrinkWrap: true,
                                      cacheExtent: 0,
                                      padding: EdgeInsets.only(top: 5),
                                      physics: ClampingScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return CommentTile(
                                          comment: state
                                              .newsCommentsModel!.data![index],
                                          newsId: newsId,
                                        );
                                      },
                                      itemCount:
                                          state.newsCommentsModel!.data!.length,
                                    )
                                  : _loadFailedOrNoCommentsBuild(context),
                            ),
                            if (state.newsCommentsModel!.meta!.last_page !=
                                state.newsCommentsModel!.meta!.current_page)
                              TextButton(
                                  onPressed: () {
                                    BlocProvider.of<CommentCubit>(context)
                                        .fetchNextPageMainComment(newsId);
                                  },
                                  child: Row(
                                    children: [
                                      Text("Show more comments"),
                                    ],
                                  ))
                          ],
                        );
                      }
                    }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: GestureDetector(
                    onTap: () async {
                      await AutoRouter.of(context)
                          .push(CreateNewComment(newsId: newsId));
                      BlocProvider(
                          create: (context) => sl<SinglenewshandlerCubit>());
                      BlocProvider.of<CommentCubit>(context)
                          .fetchMainComment(newsId: newsId);
                    },
                    child: TextField(
                      enabled: false,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          hintText: "Type Comments here..."),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _loadFailedOrNoCommentsBuild(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "No Comments!!!\nBe the first one to add a comment.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      );
}

class CommentTile extends HookWidget {
  final Datum comment;
  final int newsId;
  const CommentTile({
    Key? key,
    required this.newsId,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final showReplies = useState<bool>(false);

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
                          Text(comment.comment!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(fontSize: 18)),
                          SizedBox(height: 5),
                          if (comment.replies_count! > 0)
                            Text("${comment.replies_count} Replies"),
                          SizedBox(height: 5),
                          Row(
                            children: [
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
                                        CreateNewComment(parentId: comment.id));

                                    BlocProvider.of<CommentCubit>(context)
                                        .fetchMainComment(newsId: newsId);
                                  },
                                  //reply
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

                                      await BlocProvider.of<CommentCubit>(
                                              context)
                                          .deleteComment(comment.id!);
                                      BlocProvider.of<CommentCubit>(context)
                                          .fetchMainComment(newsId: newsId);
                                      BotToast.closeAllLoading();
                                    },
                                    child: Text("Delete"),
                                  ),
                              SizedBox(width: 5),
                              Spacer(),
                              if (comment.replies_count! > 0)
                                TextButton(
                                    onPressed: () =>
                                        showReplies.value = !showReplies.value,
                                    child: Text(
                                        "${showReplies.value ? 'Hide' : 'Show'} Replies")),
                            ],
                          )
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
        if (comment.replies_count! > 0)
          Visibility(
            visible: showReplies.value,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: ReplyCommentListing(commentId: comment.id!),
            ),
          )
      ],
    );
  }
}
