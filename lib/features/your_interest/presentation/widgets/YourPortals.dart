import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/fetch_followed_news_sources/presentations/cubit/fetchfollowednewsauth_cubit.dart';
import 'package:you/features/news_sources/models/NewsSourceModel.dart'
    as newsSourceModel;
import 'package:you/routes/auto_router.gr.dart';

class YourPortals extends StatelessWidget {
  YourPortals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final portals = sl<SharedPreferences>().getStringList("newsProviders");

    List<newsSourceModel.Datum> newsPortals = [];
    if (portals != null) {
      newsPortals = List<newsSourceModel.Datum>.from(portals.map(
          (element) => newsSourceModel.Datum.fromJson(jsonDecode(element))));
    }

    if (BlocProvider.of<AuthCubit>(context).state is Authenticated) {
      BlocProvider.of<FetchfollowednewsauthCubit>(context, listen: false)
          .state
          .maybeMap(
              initial: (initial) {
                BlocProvider.of<FetchfollowednewsauthCubit>(context)
                    .getFollowedNewsSources();
              },
              fetched: (fetched) {
                fetched.newsSourcesFollowed.data?.forEach((remoteElement) {
                  final exists = newsPortals
                      .where((element) => element.id == remoteElement.id);
                  if (exists.isEmpty) {
                    //if doesnt exists in local add from the remote
                    newsPortals.add(
                        newsSourceModel.Datum.fromJson(remoteElement.toJson()));
                  }
                });
              },
              orElse: () {});
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/globe.svg",
                height: 20,
                width: 20,
              ),
              SizedBox(width: 10),
              AdaptiveText("Your Portal",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          if (newsPortals.isNotEmpty)
            Wrap(
                alignment: WrapAlignment.start,
                spacing: 20,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,
                children: List.generate(
                        newsPortals.length > 6 ? 6 : newsPortals.length,
                        (index) => newsPortals[index])
                    .map(
                      (e) => TextButton(
                        onPressed: () {
                          AutoRouter.of(context).push(PublisherRoute(
                            publihserID: e.id!,
                            publisherLink: e.link,
                            publisherLogo: e.logo,
                            publisherName: e.name,
                            followerNumber: e.followersCount,
                            storyNumber: e.newsCount,
                          ));
                        },
                        child: Container(
                          height: 30,
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                e.logo ?? defaultNewsProviderImageUrl,
                                height: 30,
                                scale: .5,
                                fit: BoxFit.fitHeight,
                              ),
                              Text(
                                "${e.name}",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList())
          else
            Text(
              "No Providers Selected",
              style: TextStyle(fontSize: 14),
            ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
