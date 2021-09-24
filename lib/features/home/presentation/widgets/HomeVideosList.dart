import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveRichText.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:you/features/home/presentation/widgets/HomePageWidgets.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';
import 'package:you/features/latest_videos/presentations/blocs/all_video_listing/all_video_listing_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class HomeVideosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllVideoListingCubit, AllVideoListingState>(
      builder: (context, state) {
        return state.map(initial: (initial) {
          BlocProvider.of<AllVideoListingCubit>(context).fetch();
          return VideoCardShimmer();
        }, loading: (loading) {
          return VideoCardShimmer();
        }, loaded: (loaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AdaptiveText(
                        AppLocalizations.of(context)!.latestVideo.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () =>
                            AutoRouter.of(context).push(LatestVideoListing()),
                        child: AdaptiveText("View more",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 180,
                color: Colors.grey.withOpacity(.2),
                padding: EdgeInsets.only(left: 10),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) =>
                      _VideoCard(data: loaded.allVideos.data![index]),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 20,
                  ),
                  itemCount: loaded.allVideos.data!.length > 5
                      ? 5
                      : loaded.allVideos.data!.length,
                ),
              ),
            ],
          );
        }, failure: (failure) {
          return VideoCardShimmer();
        });
      },
    );
  }
}

class _VideoCard extends StatelessWidget {
  final Datum data;

  const _VideoCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      onTap: () =>
          AutoRouter.of(context).push(VideoPlayerView(selectedVideoData: data)),
      child: Container(
        width: 220,
        child: Column(
          children: [
            SizedBox(height: 10),
            TextButton(
              onPressed: () => AutoRouter.of(context)
                  .push(VideoPlayerView(selectedVideoData: data)),
              style: Theme.of(context).textButtonTheme.style!.copyWith(
                  padding: MaterialStateProperty.resolveWith(
                      (states) => EdgeInsets.zero)),
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://img.youtube.com/vi/${data.video_id}/sddefault.jpg",
                    width: 200,
                    height: 100,
                    fit: BoxFit.cover,
                    errorWidget: (_, __, ___) {
                      return Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/you_logo.png",
                            height: 80,
                            width: 80,
                          ),
                        ),
                      );
                    },
                    progressIndicatorBuilder: (context, url, progress) =>
                        Container(
                      height: 110,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                      ),
                      child: Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 55,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      size: 100,
                      color: Colors.white38,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AdaptiveRichText(
                textSpan: TextSpan(children: [
                  TextSpan(
                      text: "${data.publisher!.name} |",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: data.name,
                      style: Theme.of(context).textTheme.subtitle2)
                ]),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
