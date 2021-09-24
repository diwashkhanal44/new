import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/core/shared_widgets/child_widgets/NewsReactions.dart';
import 'package:you/features/latest_news/models/NewsModel.dart' hide Reactions;
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class NewsWebView extends StatefulWidget {
  final String title;
  final String? url;
  final Datum? newsEntity;

  final int newsId;

  const NewsWebView(
      {Key? key,
      required this.title,
      this.url,
      required this.newsId,
      this.newsEntity})
      : super(key: key);

  @override
  _NewsWebViewState createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
  Widget? webView;
  late final WebViewController _controller;
  late final String url;
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    if (widget.url != null) {
      url = widget.url!;
      webView = WebView(
        onWebViewCreated: (controller) {
          _controller = controller;
        },
        allowsInlineMediaPlayback: true,
        initialUrl: widget.url,
      );
    }
  }

  _addClickData(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3));
    if (mounted)
      BlocProvider.of<SinglenewshandlerCubit>(context)
          .addClickCount(widget.newsId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SinglenewshandlerCubit>(),
      child: BlocBuilder<SinglenewshandlerCubit, SinglenewshandlerState>(
        builder: (context, state) {
          state.maybeMap(
              orElse: () {},
              loaded: (loaded) {
                if (widget.url == null) {
                  if (webView != null)
                    url = loaded.singleNewsDetails.data!.link!;
                  webView = WebView(
                    onWebViewCreated: (controller) {
                      _controller = controller;
                    },
                    allowsInlineMediaPlayback: true,
                    initialUrl: loaded.singleNewsDetails.data!.link!,
                  );
                }
              },
              initial: (_) async {
                BlocProvider.of<SinglenewshandlerCubit>(context)
                    .fetchSingleNewsData(widget.newsId);

                _addClickData(context);

                return Container();
              });

          if (webView == null) {
            return LoadingWidget();
          }
          return Scaffold(
              appBar: AppBar(
                actions: [
                  PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: Text("Open in browser"), value: "open"),
                        PopupMenuItem(child: Text("Copy link"), value: "copy"),
                      ];
                    },
                    onSelected: (value) async {
                      if (value == "open") {
                        _launchURL(url);
                      } else if (value == "copy") {
                        await Clipboard.setData(
                            ClipboardData(text: widget.url));
                      }
                    },
                  ),
                ],
                // title: Text(widget.title),
                // // backgroundColor: Colors.transparent,
                // foregroundColor: Theme.of(context).brightness == Brightness.dark
                //     ? Colors.white
                //     : Colors.black,
                // systemOverlayStyle: SystemUiOverlayStyle(
                //     statusBarColor: Colors.transparent,
                //     statusBarIconBrightness:
                //         Theme.of(context).brightness == Brightness.dark
                //             ? Brightness.light
                //             : Brightness.dark),
              ),
              body: Column(
                children: [
                  Expanded(child: webView!),
                  Container(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            Flexible(
                              child: GestureDetector(
                                onTap: () async => await AutoRouter.of(context)
                                    .push(CreateNewComment(
                                        newsId: widget.newsId)),
                                child: TextField(
                                  enabled: false,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0, horizontal: 16),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      hintText: "Comment..."),
                                ),
                              ),
                            ),
                            Reactions(
                              currentlySelectedReaction: state.maybeMap(
                                  orElse: () => widget.newsEntity?.reactions
                                      ?.reaction?.reaction,
                                  loaded: (loaded) => loaded.singleNewsDetails
                                      .data?.reactions?.reaction?.reaction),
                              onReactionChange: (reactionName, image) {
                                final current = state.maybeMap(
                                    orElse: () => widget.newsEntity?.reactions
                                        ?.reaction?.reaction_id,
                                    loaded: (loaded) => loaded
                                        .singleNewsDetails
                                        .data
                                        ?.reactions
                                        ?.reaction
                                        ?.reaction_id);

                                if (current == null) {
                                  BlocProvider.of<SinglenewshandlerCubit>(
                                          context)
                                      .storeReactions(
                                          widget.newsId, reactionName);
                                  //store
                                } else {
                                  BlocProvider.of<SinglenewshandlerCubit>(
                                          context)
                                      .updateReactions(
                                          widget.newsId, current, reactionName);
                                }
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.comment_outlined),
                              onPressed: () async {
                                await AutoRouter.of(context).push(
                                    MainCommentsListing(
                                        newsId: widget.newsId,
                                        newsEntity: widget.newsEntity));
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {
                                Share.share(
                                    "${widget.title}  \n${widget.url}\nShared via You app. Download now for more news at. //TODO: PlayStore/appStore link",
                                    subject: "Check this news.");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }

  void _launchURL(String _url) async => await launch(_url);
}
