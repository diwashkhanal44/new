import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Actions;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/fetch_followed_news_sources/presentations/cubit/fetchfollowednewsauth_cubit.dart';
import 'package:you/features/latest_news/models/NewsModel.dart' hide Reactions;
import 'package:you/features/profile/presentation/cubits/saved_news/cubit/saved_news_cubit.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

import 'NewsReactions.dart';

class FullSizeNewsCard extends StatelessWidget {
  final Datum newsEntity;

  // this allows certain functionality to add or remove from newscard when shown in comment listing screen
  final bool? enableComment;
  // this allows certain functionality to add or remove from newscard when shown in publisher page screen
  final bool? hidePublisherInfo;

  final bool? isSavedList;
  const FullSizeNewsCard(
      {Key? key,
      required this.newsEntity,
      this.enableComment,
      this.isSavedList,
      this.hidePublisherInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SinglenewshandlerCubit>(),
      child: _FullSizeNewsCard(
        newsEntity: newsEntity,
        enableComment: enableComment ?? true,
        hidePublisherInfo: hidePublisherInfo ?? false,
        isSavedList: isSavedList ?? false,
      ),
    );
  }
}

class _FullSizeNewsCard extends StatelessWidget {
  final Datum newsEntity;
  final bool enableComment;
  final bool hidePublisherInfo;
  final bool isSavedList;
  _FullSizeNewsCard({
    Key? key,
    required this.newsEntity,
    required this.enableComment,
    required this.hidePublisherInfo,
    required this.isSavedList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List getTheReactionList(Actions? reactions) {
      final rxn = [];

      if (reactions == null) return rxn;

      if (reactions.HAPPY?.count != 0 && reactions.HAPPY?.count != null)
        rxn.add({"name": "HAPPY", "asset": "assets/images/haha2.png"});

      if (reactions.LIKE?.count != 0 && reactions.LIKE?.count != null)
        rxn.add({"name": "LIKE", "asset": "assets/images/ic_like_fill.png"});

      if (reactions.LOVE?.count != 0 && reactions.LOVE?.count != null)
        rxn.add({"name": "LOVE", "asset": "assets/images/love2.png"});

      if (reactions.ANGRY?.count != 0 && reactions.ANGRY?.count != null)
        rxn.add({"name": "ANGRY", "asset": "assets/images/angry2.png"});

      if (reactions.SAD?.count != 0 && reactions.SAD?.count != null)
        rxn.add({"name": "SAD", "asset": "assets/images/sad2.png"});

      if (reactions.WOW?.count != 0 && reactions.WOW?.count != null)
        rxn.add({"name": "WOW", "asset": "assets/images/wow2.png"});

      return rxn;
    }

    int countTotalRxnNumber(Actions? reactions) {
      int totalCount = 0;
      if (reactions == null) return totalCount;
      if (reactions.HAPPY?.count != null) totalCount += reactions.HAPPY!.count!;
      if (reactions.LIKE?.count != null) totalCount += reactions.LIKE!.count!;
      if (reactions.LOVE?.count != null) totalCount += reactions.LOVE!.count!;
      if (reactions.ANGRY?.count != null) totalCount += reactions.ANGRY!.count!;
      if (reactions.SAD?.count != null) totalCount += reactions.SAD!.count!;
      if (reactions.WOW?.count != null) totalCount += reactions.WOW!.count!;
      return totalCount;
    }

    return BlocBuilder<SinglenewshandlerCubit, SinglenewshandlerState>(
      builder: (context, state) {
        state.maybeMap(
            initial: (intial) =>
                BlocProvider.of<SinglenewshandlerCubit>(context)
                    .fetchSingleNewsData(newsEntity.id!),
            orElse: () => {});

        final reactions = getTheReactionList(state.maybeMap(
            orElse: () => newsEntity.reactions?.reactions,
            loaded: (loaded) =>
                loaded.singleNewsDetails.data?.reactions?.reactions));

        return !enableComment
            ? _cardChildren(context, reactions, countTotalRxnNumber, state)
            : Card(
                child: _cardChildren(
                    context, reactions, countTotalRxnNumber, state));
      },
    );
  }

  Widget _cardChildren(
      BuildContext context,
      List<dynamic> reactions,
      int countTotalRxnNumber(Actions reactions),
      SinglenewshandlerState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!hidePublisherInfo)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => AutoRouter.of(context).push(PublisherRoute(
                      publisherName:
                          newsEntity.publisher?.name ?? defaultNewsProviderName,
                      publisherLink:
                          newsEntity.publisher?.link ?? 'www.you.com',
                      publisherLogo: newsEntity.publisher?.logo ??
                          defaultNewsProviderImageUrl,
                      storyNumber: newsEntity.publisher?.news_count ?? 0,
                      followerNumber:
                          newsEntity.publisher?.followers_count ?? 0,
                      publihserID: newsEntity.publisher!.id!)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        // width: 40,
                        child: CachedNetworkImage(
                          imageUrl: newsEntity.publisher?.logo ??
                              defaultNewsProviderImageUrl,
                          width: 50,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                strokeWidth: 1,
                                value: downloadProgress.progress),
                          ),
                          errorWidget: (context, url, error) =>
                              CachedNetworkImage(
                            imageUrl: defaultNewsProviderImageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AdaptiveText(
                            newsEntity.publisher?.name ??
                                defaultNewsProviderName,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          AdaptiveText(newsEntity.created_at ?? ''),
                        ],
                      ),
                    ],
                  ),
                ),
                BlocBuilder<FetchfollowednewsauthCubit,
                    FetchfollowednewsauthState>(
                  builder: (context, state) {
                    bool followedSource = false;

                    state.map(
                        initial: (initial) {
                          if (BlocProvider.of<AuthCubit>(context).state
                              is Authenticated) {
                            BlocProvider.of<FetchfollowednewsauthCubit>(context)
                                .getFollowedNewsSources();
                          }
                        },
                        fetched: (fetched) {
                          final followed = fetched.newsSourcesFollowed.data
                              ?.where((element) =>
                                  element.id == newsEntity.publisher?.id);

                          if (followed != null && followed.isNotEmpty) {
                            followedSource = true;
                          }
                        },
                        failed: (failed) {});

                    return SizedBox(
                      height: 40,
                      child: OutlinedButton.icon(
                          onPressed: () async {
                            if (BlocProvider.of<AuthCubit>(context).state
                                is Authenticated) {
                              final id = newsEntity.publisher?.id;
                              if (id != null)
                                await BlocProvider.of<SinglenewshandlerCubit>(
                                        context)
                                    .followUnfollow(id);
                              // fetch user profile
                              BlocProvider.of<AuthCubit>(context).getProfile();

                              BlocProvider.of<FetchfollowednewsauthCubit>(
                                      context)
                                  .getFollowedNewsSources();
                            } else {
                              AutoRouter.of(context).push(LoginScreen());
                            }
                          },
                          icon: Icon(followedSource
                              ? Icons.star
                              : Icons.star_border_outlined),
                          label: Text(followedSource ? "Unfollow" : "Follow")),
                    );
                  },
                )
              ],
            ),
          ),
        InkWell(
          onTap: () {
            if (newsEntity.link != null)
              AutoRouter.of(context).push(NewsWebView(
                  title: "Title",
                  url: newsEntity.link!,
                  newsId: newsEntity.id!,
                  newsEntity: newsEntity));
          },
          child: Column(children: [
            SizedBox(height: 5),
            if (newsEntity.image != null)
              SizedBox(
                height:
                    isSavedList ? 150 : MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                  imageUrl: newsEntity.image ?? defaultNewsProviderImageUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                          child: CircularProgressIndicator(
                              strokeWidth: 1,
                              value: downloadProgress.progress)),
                  errorWidget: (context, url, error) => CachedNetworkImage(
                    imageUrl: defaultNewsProviderImageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdaptiveText(
                    newsEntity.title!,
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 3,
                  ),
                  SizedBox(height: 5),
                  if (newsEntity.meta_description != null)
                    AdaptiveText(
                      newsEntity.meta_description!,
                      maxLines: 3,
                    )
                ],
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0, left: 8),
          child: SizedBox(
            height: 25,
            child: Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.from(
                    reactions.map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 2),
                        child: Image.asset(e["asset"] as String),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Text(
                        "${countTotalRxnNumber(state.maybeMap(orElse: () => newsEntity.reactions!.reactions!, loaded: (loaded) => loaded.singleNewsDetails.data!.reactions!.reactions!))} ‧ ",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black45
                                    : Colors.white60)),
                    Text("${newsEntity.total_comments ?? '0'} Comments",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black45
                                    : Colors.white60)),
                  ],
                )
              ],
            ),
          ),
        ),
        Divider(height: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Reactions(
              currentlySelectedReaction: state.maybeMap(
                  orElse: () => newsEntity.reactions?.reaction?.reaction,
                  loaded: (loaded) => loaded
                      .singleNewsDetails.data?.reactions?.reaction?.reaction),
              onReactionChange: (reactionName, image) {
                final current = state.maybeMap(
                    orElse: () => newsEntity.reactions?.reaction?.reaction_id,
                    loaded: (loaded) => loaded.singleNewsDetails.data?.reactions
                        ?.reaction?.reaction_id);

                if (current == null) {
                  BlocProvider.of<SinglenewshandlerCubit>(context)
                      .storeReactions(newsEntity.id!, reactionName);
                  //store
                } else {
                  BlocProvider.of<SinglenewshandlerCubit>(context)
                      .updateReactions(newsEntity.id!, current, reactionName);
                }
              },
            ),
            TextButton.icon(
              label: Text("Comment"),
              icon: Icon(Icons.comment_outlined),
              onPressed: enableComment
                  ? () async {
                      await AutoRouter.of(context).push(MainCommentsListing(
                          newsId: newsEntity.id!, newsEntity: newsEntity));

                      BlocProvider.of<SinglenewshandlerCubit>(context)
                          .fetchSingleNewsData(newsEntity.id!);
                    }
                  : () async {
                      //  todo push to write comment page
                      await AutoRouter.of(context)
                          .push(CreateNewComment(newsId: newsEntity.id));
                      BlocProvider.of<SinglenewshandlerCubit>(context)
                          .fetchSingleNewsData(newsEntity.id!);
                    },
            ),
            TextButton.icon(
              label: Text("Share"),
              icon: Icon(Icons.share_outlined),
              onPressed: () {
                Share.share(newsEntity.link!);
              },
            ),
            BlocBuilder<SavedNewsCubit, SavedNewsState>(
              builder: (context, state) {
                bool savedAlready = false;
                if (BlocProvider.of<AuthCubit>(context).state
                    is Authenticated) {
                  if (state is SavedNewsCubit) {
                    BlocProvider.of<SavedNewsCubit>(context).fetch();
                  }

                  if (BlocProvider.of<SavedNewsCubit>(context).state
                      is LoadedSavedNews) {
                    final savedNews = BlocProvider.of<SavedNewsCubit>(context)
                        .state as LoadedSavedNews;

                    final potentialSaved = savedNews.currentSavedNews?.data
                        ?.where((element) => element.id == newsEntity.id);

                    if (potentialSaved != null && potentialSaved.isNotEmpty) {
                      savedAlready = false;
                    }
                  } else {
                    BlocProvider.of<SavedNewsCubit>(context).fetch();
                  }
                } else {
                  // AutoRouter.of(context).push(LoginScreen());
                }

                return PopupMenuButton<String>(
                  tooltip: "More",
                  itemBuilder: (context) {
                    return [
                      if (!hidePublisherInfo)
                        PopupMenuItem(
                          value: 'pub-page',
                          child: Row(
                            children: [
                              Icon(Icons.vertical_split),
                              Text("Browse ${newsEntity.publisher!.name}")
                            ],
                          ),
                        ),
                      PopupMenuItem(
                        value: 'save-unsave',
                        child: Row(
                          children: [
                            Icon(savedAlready
                                ? Icons.bookmark_rounded
                                : Icons.bookmark_border_rounded),
                            Text(
                                "${savedAlready ? 'Remove saved' : 'Save'} news")
                          ],
                        ),
                      ),
                    ];
                  },
                  onSelected: (value) {
                    if (value == 'save-unsave') {
                      if (BlocProvider.of<AuthCubit>(context).state
                          is Authenticated) {
                        if (BlocProvider.of<SavedNewsCubit>(context).state
                            is LoadedSavedNews) {
                          final authdata = BlocProvider.of<AuthCubit>(context)
                              .state as Authenticated;

                          final savedNews =
                              BlocProvider.of<SavedNewsCubit>(context).state
                                  as LoadedSavedNews;

                          final potentialSaved = savedNews
                              .currentSavedNews?.data
                              ?.where((element) => element.id == newsEntity.id);

                          if (potentialSaved != null &&
                              potentialSaved.isNotEmpty) {
                            BlocProvider.of<SinglenewshandlerCubit>(context)
                                .bookMarkRemove(newsEntity.id!);
                          } else {
                            BlocProvider.of<SinglenewshandlerCubit>(context)
                                .bookMark(newsEntity.id!);
                          }

                          BlocProvider.of<SavedNewsCubit>(context).fetch();
                        } else {
                          BlocProvider.of<SavedNewsCubit>(context).fetch();
                        }
                      } else {
                        AutoRouter.of(context).push(LoginScreen());
                      }
                    }
                    if (value == 'pub-page') {
                      AutoRouter.of(context).push(PublisherRoute(
                          publisherName: newsEntity.publisher?.name ??
                              defaultNewsProviderName,
                          publisherLink:
                              newsEntity.publisher?.link ?? 'www.you.com',
                          publisherLogo: newsEntity.publisher?.logo ??
                              defaultNewsProviderImageUrl,
                          publihserID: newsEntity.publisher!.id!));
                    }
                  },
                );
              },
            )
          ],
        )
      ],
    );
  }
}
