import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/fetch_followed_news_sources/presentations/cubit/fetchfollowednewsauth_cubit.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/cubits/publisherdetails/publisherdetails_cubit.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class PublisherProfile extends StatelessWidget {
  const PublisherProfile({
    Key? key,
    required this.publisherID,
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

  final int publisherID;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PublisherdetailsCubit, PublisherdetailsState>(
      builder: (context, state) {
        if (publisherName == null ||
            publisherLink == null ||
            publisherLogo == null ||
            storyNumber == null ||
            followerNumber == null) {
          return state.maybeWhen(
              orElse: () => newsProviderDetailCardSimmer(),
              initial: () {
                BlocProvider.of<PublisherdetailsCubit>(context)
                    .getPublisherDetails(publisherID);
                return newsProviderDetailCardSimmer();
              },
              loaded: (loadedPublisherDetails) => buildPublisherDetail(context,
                  publisherName: loadedPublisherDetails.name!,
                  publisherLink: loadedPublisherDetails.address!,
                  publisherLogo: loadedPublisherDetails.logo!,
                  followerNumber: loadedPublisherDetails.followers_count!,
                  storyNumber: loadedPublisherDetails.news_count!,
                  publisherID: loadedPublisherDetails.id!),
              failed: (failed) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(failed),
                    ),
                    TextButton.icon(
                        onPressed: () =>
                            BlocProvider.of<PublisherdetailsCubit>(context)
                                .getPublisherDetails(publisherID),
                        icon: Icon(Icons.refresh),
                        label: Text('Retry'))
                  ],
                );
              });
        } else {
          return buildPublisherDetail(context,
              publisherName: publisherName!,
              publisherLink: publisherLink!,
              publisherLogo: publisherLogo!,
              publisherID: publisherID,
              storyNumber: storyNumber!,
              followerNumber: followerNumber!);
        }
      },
    );
  }

  Widget buildPublisherDetail(BuildContext context,
          {required String publisherName,
          required String publisherLink,
          required String publisherLogo,
          required int followerNumber,
          required int storyNumber,
          required int publisherID}) =>
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: CachedNetworkImageProvider(publisherLogo),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(publisherName,
                    style: Theme.of(context).textTheme.headline6),
                Text(
                  publisherLink,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("$followerNumber Followers ‧ $storyNumber stories"),
                SizedBox(height: 15),
                BlocBuilder<FetchfollowednewsauthCubit,
                    FetchfollowednewsauthState>(builder: (context, state) {
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
                            ?.where((element) => element.id == publisherID);

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
                            await BlocProvider.of<SinglenewshandlerCubit>(
                                    context)
                                .followUnfollow(publisherID);
                            // fetch user profile
                            BlocProvider.of<AuthCubit>(context).getProfile();

                            BlocProvider.of<FetchfollowednewsauthCubit>(context)
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
                }),
              ],
            )
          ],
        ),
      );

  newsProviderDetailCardSimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white30,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10, color: Colors.white30),
                SizedBox(height: 5),
                Container(height: 10, width: 180, color: Colors.white30),
                SizedBox(height: 5),
                Container(height: 10, width: 80, color: Colors.white30),
              ],
            )
          ],
        ),
      ),
    );
  }
}
