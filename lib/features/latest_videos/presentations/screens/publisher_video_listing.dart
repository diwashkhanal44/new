import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/config/service_locator.dart';

import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/features/home/presentation/widgets/FullNewsCardShimmer.dart';
import 'package:you/features/latest_videos/presentations/blocs/publisher_video_listing/publisher_video_cubit.dart';

import 'widgets/videocard.dart';

class PublisherVideoListing extends StatelessWidget {
  const PublisherVideoListing(
      {Key? key, this.scrollController, required this.publisherID})
      : super(key: key);
  final ScrollController? scrollController;
  final int publisherID;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<PublisherVideoCubit>(),
        child: _PublisherVideoListing(
            scrollController: scrollController, publisherID: publisherID));
  }
}

// ignore: must_be_immutable
class _PublisherVideoListing extends HookWidget {
  _PublisherVideoListing(
      {Key? key, this.scrollController, required this.publisherID})
      : super(key: key);
  final ScrollController? scrollController;
  final int publisherID;
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
            BlocProvider.of<PublisherVideoCubit>(context)
                .fetchNextPage(publisherID);
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<PublisherVideoCubit>(context)
                .fetchNextPage(publisherID);
            requestedLength = lastLength;
          }
        }
      });
    }

    return BlocBuilder<PublisherVideoCubit, PublisherVideoState>(
      builder: (context, state) {
        return state.map(initial: (initial) {
          BlocProvider.of<PublisherVideoCubit>(context)
              .fetch(publisherID: publisherID);
          return FullNewsCardShimmer();
        }, loading: (loading) {
          return FullNewsCardShimmer();
        }, loaded: (loaded) {
          return ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: loaded.allVideos.data!.length + 1,
              itemBuilder: (context, index) {
                if (index == loaded.allVideos.data!.length) if (loaded
                        .allVideos.meta?.current_page !=
                    loaded.allVideos.meta?.last_page)
                  return LoadingWidget();
                else
                  return SizedBox();
                return VideoCard(
                  shouldPop: true,
                  data: loaded.allVideos.data![index],
                );
              });
        }, failure: (failure) {
          return FullNewsCardShimmer();
        });
      },
    );
  }
}
