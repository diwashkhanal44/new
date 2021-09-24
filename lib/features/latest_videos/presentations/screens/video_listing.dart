import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/features/home/presentation/widgets/FullNewsCardShimmer.dart';
import 'package:you/features/latest_videos/presentations/blocs/all_video_listing/all_video_listing_cubit.dart';

import 'widgets/videocard.dart';

// ignore: must_be_immutable
class LatestVideoListing extends HookWidget {
  LatestVideoListing({Key? key, this.scrollController}) : super(key: key);
  final ScrollController? scrollController;
  int lastLength = 0;
  int requestedLength = 0;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();

    if (scrollController != null) {
      scrollController!.addListener(() {
        if (scrollController!.position.pixels >=
            scrollController!.position.maxScrollExtent - 50) {
          if (lastLength != requestedLength) {
            BlocProvider.of<AllVideoListingCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<AllVideoListingCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Latest Videos"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: BlocBuilder<AllVideoListingCubit, AllVideoListingState>(
        builder: (context, state) {
          return state.map(initial: (initial) {
            BlocProvider.of<AllVideoListingCubit>(context).fetch();
            return FullNewsCardShimmer();
          }, loading: (loading) {
            return FullNewsCardShimmer();
          }, loaded: (loaded) {
            return ListView.builder(
                itemCount: loaded.allVideos.data!.length + 1,
                itemBuilder: (context, index) {
                  if (index == loaded.allVideos.data!.length) {
                    if (loaded.allVideos.meta?.current_page !=
                        loaded.allVideos.meta?.last_page)
                      return LoadingWidget();
                    else
                      return SizedBox();
                  }
                  return VideoCard(data: loaded.allVideos.data![index]);
                });
          }, failure: (failure) {
            return FullNewsCardShimmer();
          });
        },
      ),
    );
  }
}
