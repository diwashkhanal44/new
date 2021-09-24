import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/cubits/publisherdetails/publisherdetails_cubit.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/cubits/publishernews/publisher_news_cubit.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/screens/widgets/PublisherNews.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/screens/widgets/PublisherProfile.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';

class PublisherPage extends StatelessWidget {
  const PublisherPage({
    Key? key,
    required this.publihserID,
    this.publisherName,
    this.publisherLink,
    this.publisherLogo,
    this.followerNumber,
    this.storyNumber,
  }) : super(key: key);

  final String? publisherName;
  final String? publisherLink;
  final String? publisherLogo;
  final int? followerNumber;
  final int? storyNumber;
  final int publihserID;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<PublisherNewsCubit>()),
        BlocProvider(create: (context) => sl<PublisherdetailsCubit>()),
        BlocProvider(create: (context) => sl<SinglenewshandlerCubit>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.white),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: Text(
                      'Share',
                    ),
                    value: 'share'),
              ],
              onSelected: (value) {
                switch (value) {
                  case 'share':
                    Share.share(context.routeData.path);
                    break;
                }
              },
            )
          ],
        ),
        body: ListView(
          children: [
            PublisherProfile(
              publisherID: publihserID,
              publisherLink: publisherLink,
              publisherLogo: publisherLogo,
              publisherName: publisherName,
            ),
            Divider(height: 1),
            PublisherNews(publisherID: publihserID),
          ],
        ),
      ),
    );
  }
}
