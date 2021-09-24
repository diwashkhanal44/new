import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/single_news_handler/presentation/cubits/comment-cubit/comment_cubit.dart';

class CreateNewComment extends StatelessWidget {
  const CreateNewComment({Key? key, this.replyId, this.parentId, this.newsId})
      : super(key: key);

  final int? replyId;
  final int? parentId;
  final int? newsId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CommentCubit>(),
      child: _CreateNewComment(
        replyId: replyId,
        newsId: newsId,
        parentId: parentId,
      ),
    );
  }
}

class _CreateNewComment extends HookWidget {
  const _CreateNewComment({this.replyId, this.parentId, this.newsId, Key? key})
      : super(key: key);
  final int? replyId;
  final int? newsId;
  final int? parentId;
  @override
  Widget build(BuildContext context) {
    final comment = useTextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Write Comment."),
          actions: [
            BlocBuilder<CommentCubit, CommentState>(
              builder: (context, state) {
                return TextButton.icon(
                  onPressed: () async {
                    BotToast.showLoading();

                    if (comment.text.isNotEmpty) if (newsId != null)
                      await BlocProvider.of<CommentCubit>(context)
                          .addComment(newsId!, comment.text); //main comment
                    else
                      //reply comment
                      await BlocProvider.of<CommentCubit>(context)
                          .replyComment(parentId!, replyId, comment.text);

                    BotToast.closeAllLoading();
                    AutoRouter.of(context).pop();
                  },
                  label: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                );
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: comment,
            maxLines: null,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "Start writing here"),
          ),
        ),
      ),
    );
  }
}
