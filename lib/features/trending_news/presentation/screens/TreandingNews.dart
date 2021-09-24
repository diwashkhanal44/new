import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';

import 'package:you/features/trending_news/presentation/cubit/trending_news_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';
import '/core/utils/list_extenstion.dart';

class TrendingNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: AdaptiveText(
              AppLocalizations.of(context)!.trending.toUpperCase(),
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 5),
        BlocBuilder<TrendingNewsCubit, TrendingNewsState>(
          builder: (context, state) {
            return state.maybeMap(
                initial: (initial) {
                  BlocProvider.of<TrendingNewsCubit>(context).getTrendingNews();
                  return Center(
                      child: CircularProgressIndicator(strokeWidth: 1));
                },
                loaded: (loaded) {
                  return Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.grey.withOpacity(.3),
                      child: Column(
                        children: List<Widget>.from(loaded
                                .trendingNewsModel.data!
                                .map((e) => _TrendingNewsCard(news: e)))
                            .addInBetweenElements(Divider(height: 1)),
                      ));
                },
                orElse: () =>
                    Center(child: CircularProgressIndicator(strokeWidth: 1)));
          },
        ),
      ],
    );
  }
}

class _TrendingNewsCard extends StatelessWidget {
  final Datum news;

  const _TrendingNewsCard({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: () {
        AutoRouter.of(context).push(NewsWebView(
            title: "Title",
            url: news.link!,
            newsId: news.id!,
            newsEntity: news));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  news.publisher?.logo ?? defaultNewsProviderImageUrl),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      news.publisher?.name ??
                          defaultNewsProviderName + ' · ' + news.created_at!,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold)),
                  Text(news.title!,
                      style: Theme.of(context).textTheme.headline6),
                  SizedBox(height: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
