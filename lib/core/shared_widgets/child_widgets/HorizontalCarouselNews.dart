import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/routes/auto_router.gr.dart';

import 'package:you/config/api_call_defaults.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:you/core/shared_widgets/child_widgets/HorizontalCarouselNewsShimmer.dart';
import 'package:you/features/home/presentation/blocs/breaking_news/breaking_news_cubit.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';

class HorizontalCarouselNews extends HookWidget {
  final bool showSeeAll;
  final Color? backgroundColor;
  final Widget? icon;
  final Color? cardColor;
  final EdgeInsets? cardPadding;
  final double viewportFraction;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? headingColor;
  final Color? titleColor;
  const HorizontalCarouselNews(
      {Key? key,
      this.showSeeAll = false,
      this.backgroundColor,
      this.icon,
      this.viewportFraction = 1.0,
      this.cardColor,
      this.cardPadding,
      this.padding,
      this.headingColor,
      this.titleColor,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController =
        usePageController(viewportFraction: viewportFraction);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding ?? EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (icon != null) icon!,
                    if (icon != null) SizedBox(width: 10),
                    AdaptiveText("Breaking".toUpperCase(),
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: headingColor,
                            fontSize: 14))
                  ],
                ),
                // if (showSeeAll)
                //   Text(
                //     AppLocalizations.of(context)!.showAll,
                //     style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                //   )
              ],
            ),
          ),
          SizedBox(height: 2),
          BlocBuilder<BreakingNewsCubit, BreakingNewsState>(
            builder: (context, state) {
              return state.maybeMap(
                  initial: (initial) {
                    BlocProvider.of<BreakingNewsCubit>(context)
                        .getBreakingNews();
                    return HorizontalCarouselNewsShimmer();
                  },
                  loaded: (loaded) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: new BoxDecoration(
                          color: backgroundColor ?? Colors.grey.withOpacity(.2),
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                          ),
                        ),
                        height: 100,
                        //color: backgroundColor ?? Colors.grey.withOpacity(.2),
                        child: PageView.builder(
                          controller: pageController,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return HorizontalCarouselNewsCard(
                              news: loaded.breakingNewsModel.data![index],
                              cardColor: cardColor,
                              padding: cardPadding,
                              headingColor: titleColor,
                              margin: margin,
                            );
                          },
                          itemCount: loaded.breakingNewsModel.data!.length,
                        ),
                      ),
                    );
                  },
                  orElse: () => HorizontalCarouselNewsShimmer());
            },
          ),
        ],
      ),
    );
  }
}

class HorizontalCarouselNewsCard extends StatelessWidget {
  final Datum news;
  final Color? cardColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? headingColor;

  const HorizontalCarouselNewsCard(
      {Key? key,
      required this.news,
      this.cardColor,
      this.padding,
      this.margin,
      this.headingColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (news.link != null)
          ? AutoRouter.of(context).push(NewsWebView(
              title: "Title",
              url: news.link!,
              newsId: news.id!,
              newsEntity: news))
          : null,
      child: Container(
        color: cardColor,
        padding: padding ?? EdgeInsets.all(8),
        margin: margin,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              news.image ?? defaultNewsProviderImageUrl,
              width: 170,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      child: AdaptiveText(news.title!,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: headingColor),
                          maxLines: 3)),
                  SizedBox(
                    height: 6,
                  ),
                  AdaptiveText(
                    "${news.publisher!.name ?? ''}  | ${news.created_at ?? ''}",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.grey
                            : Colors.white70),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
