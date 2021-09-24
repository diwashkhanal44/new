import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/app_localization.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/child_widgets/child_widgets.dart';
import 'package:you/features/category_wise_news/models/NewsCategory.dart'
    as newsCategory;
import 'package:you/features/category_wise_news/presentation/screens/CategoricalNews.dart';
import 'package:you/features/your_interest/presentation/widgets/YourPortals.dart';
import 'package:you/routes/auto_router.gr.dart';

class YourInterestHome extends HookWidget {
  YourInterestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final portals = sl<SharedPreferences>().getStringList("choosedCategories");

    final needRefresh = useState(false);

    List<newsCategory.Datum> newsCategories = [];
    if (portals != null) {
      newsCategories = List<newsCategory.Datum>.from(portals
          .map((element) => newsCategory.Datum.fromJson(jsonDecode(element))));
    }

    final scrollController = useScrollController();

    return DefaultTabController(
      length: newsCategories.length,
      child: Scaffold(
        body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                toolbarHeight: 280,
                pinned: true,
                floating: true,
                flexibleSpace: Column(
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: Container(color: Color(0xffeb1e23))),
                  ],
                ),
                title: Column(
                  children: [
                    Container(
                      color: Theme.of(context).primaryColor,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    AutoRouter.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  )),
                              Text(
                                AppLocalizations.of(context)!.newsOfYourChoice,
                                style: TextStyle(color: Colors.white),
                              ),
                              PopupMenuButton(
                                icon: Icon(Icons.more_horiz_outlined,
                                    color: Colors.white),
                                color: Colors.white,
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(AppLocalizations.of(context)!
                                        .editYourInterest),
                                    value: 1,
                                  )
                                ],
                                onSelected: (value) async {
                                  if (value == 1) {
                                    await AutoRouter.of(context)
                                        .push(PersonalizationScreen());

                                    needRefresh.value = !needRefresh.value;
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          HorizontalCarouselNews(
                            showSeeAll: true,
                            backgroundColor: Colors.transparent,
                            cardColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            icon: Icon(Icons.star, color: Colors.white),
                            viewportFraction: .9,
                            headingColor: Colors.white,
                            // headingColor: Colors.white,
                            // cardPadding: EdgeInsets.only(right: 4,),
                            margin: EdgeInsets.only(right: 8),
                          ),
                          YourPortals(),
                        ],
                      ),
                    ),
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(48),
                  child: Container(
                    child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        isScrollable: true,
                        labelColor: Colors.white,
                        tabs: newsCategories
                            .map((e) => Tab(text: e.name))
                            .toList()),
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
              children: newsCategories
                  .map((e) => CategoricalNews(
                      key: Key(e.slug!),
                      scrollController: scrollController,
                      categorySlug: e.slug!))
                  .toList()),
        ),
      ),
    );
  }
}
