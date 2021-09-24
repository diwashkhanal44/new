import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/core/shared_widgets/child_widgets/FullSizeNewsCard.dart';
import 'package:you/features/home/presentation/widgets/FullNewsCardShimmer.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/presentation/cubits/publishernews/publisher_news_cubit.dart';

class PublisherNews extends HookWidget {
  final int publisherID;
  final ScrollController? scrollController;
  PublisherNews({Key? key, this.scrollController, required this.publisherID})
      : super(key: key);
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
            BlocProvider.of<PublisherNewsCubit>(context)
                .fetchNextPage(publisherID);
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<PublisherNewsCubit>(context)
                .fetchNextPage(publisherID);
            requestedLength = lastLength;
          }
        }
      });
    }

    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Text(
            "All Stories",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        BlocBuilder<PublisherNewsCubit, PublisherNewsState>(
            builder: (context, state) {
          return state.maybeWhen(initial: () {
            BlocProvider.of<PublisherNewsCubit>(context)
                .fetch(publisherID: publisherID);
            return FullNewsCardShimmer();
          }, loading: () {
            return FullNewsCardShimmer();
          }, loaded: (loaded) {
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<PublisherNewsCubit>(context)
                    .fetch(publisherID: publisherID);
                return await Future.delayed(Duration(seconds: 3));
              },
              child: ListView.builder(
                  shrinkWrap: true,
                  cacheExtent: 0,
                  controller: (scrollController == null) ? controller : null,
                  padding: EdgeInsets.only(top: 5),
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (index == loaded.data!.length) {
                      return (loaded.meta?.current_page ==
                              loaded.meta?.last_page)
                          ? Container()
                          : FullNewsCardShimmer();
                    }

                    return FullSizeNewsCard(
                      newsEntity: loaded.data![index],
                      hidePublisherInfo: true,
                    );
                  },
                  itemCount: loaded.data!.length + 1),
            );
          }, failed: (failed) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(failed),
                ),
                TextButton.icon(
                    onPressed: () =>
                        BlocProvider.of<PublisherNewsCubit>(context)
                            .fetch(publisherID: publisherID),
                    icon: Icon(Icons.refresh),
                    label: Text('Retry'))
              ],
            );
          }, orElse: () {
            return FullNewsCardShimmer();
          });
        }),
      ],
    );
  }
}
