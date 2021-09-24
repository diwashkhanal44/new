import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/all_news/presentation/widgets/TrendingTopics.dart';
import 'package:you/features/category_wise_news/models/NewsCategory.dart';
import 'package:you/features/category_wise_news/presentation/screens/CategoricalNews.dart';
import 'package:you/features/category_wise_news/presentation/service/allnewscategories/unauthenticatednewscategories_cubit.dart';
import 'package:you/features/latest_news/presentation/screens/LatestNews.dart';
import 'package:you/routes/auto_router.gr.dart';

import '../../../../app_localization.dart';

class AllNewsScreen extends HookWidget {
  const AllNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<UnauthenticatednewscategoriesCubit,
            UnauthenticatednewscategoriesState>(
          builder: (context, state) {
            return state.map(
                initial: (initial) {
                  BlocProvider.of<UnauthenticatednewscategoriesCubit>(context)
                      .fetch(
                          langauge: AppLocalizations.of(context)!.localeName);

                  return Center(
                      child: CircularProgressIndicator(strokeWidth: 1));
                },
                loading: (loading) =>
                    Center(child: CircularProgressIndicator(strokeWidth: 1)),
                failed: (failed) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(failed.failureMessage),
                          SizedBox(height: 10),
                          TextButton.icon(
                            onPressed: () => BlocProvider.of<
                                    UnauthenticatednewscategoriesCubit>(context)
                                .fetch(
                                    langauge: AppLocalizations.of(context)!
                                        .localeName),
                            icon: Icon(Icons.refresh_outlined),
                            label: Text("Try Again"),
                          )
                        ],
                      ),
                    ),
                loaded: (loaded) =>
                    _AllNewsBody(categories: loaded.newsCategory.data));
          },
        ),
      ),
    );
  }
}

class _AllNewsBody extends HookWidget {
  final List<Datum> categories;
  const _AllNewsBody({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // +1 length for latest news section
    final tabController =
        useTabController(initialLength: categories.length + 1);

    final scrollController = useScrollController();

    return NestedScrollView(
      controller: scrollController,
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            titleSpacing: 0.0,
            toolbarHeight: 120,
            pinned: true,
            elevation: 0,
            floating: true,
            snap: true,
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
            toolbarTextStyle: Theme.of(context).textTheme.bodyText1,
            titleTextStyle: Theme.of(context).textTheme.bodyText1,
            flexibleSpace: Container(
              color: Theme.of(context).primaryColor,
            ),
            backgroundColor: Theme.of(context).primaryColor,
            forceElevated: innerBoxIsScrolled,
            backwardsCompatibility: true,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      BackButton(
                        color: Colors.white,
                      ),
                      Text("News")
                    ]),
                    TextButton.icon(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white)),
                        onPressed: () async {
                          final categoryChoosed =
                              sl<SharedPreferences>().get("choosedCategories");

                          final providerChoosed =
                              sl<SharedPreferences>().get("newsProviders");

                          if (categoryChoosed == null ||
                              providerChoosed == null)
                            await AutoRouter.of(context)
                                .push(PersonalizationScreen());

                          AutoRouter.of(context).push(YourInterestHome());
                        },
                        icon: Icon(Icons.add_circle),
                        label: Text(AppLocalizations.of(context)!.yourChoice))
                  ],
                ),
                SizedBox(height: 10),
                TrendingTopics(),
              ],
            ),
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: tabController,
                  isScrollable: true,
                  tabs: [
                    Tab(
                        child: Text(AppLocalizations.of(context)!.latest,
                            style: TextStyle(color: Colors.white))),
                    ...categories
                        .map((e) => Tab(
                            child: Text(e.name!,
                                style: TextStyle(color: Colors.white))))
                        .toList()
                  ]),
            ),
          ),
        ];
      },
      body: Scaffold(
        body: TabBarView(controller: tabController, children: [
          LatestNews(scrollController: scrollController),
          ...List.from(
            categories.map(
              (e) => CategoricalNews(
                scrollController: scrollController,
                categorySlug: e.slug!,
                // key: Key(e.slug!),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
