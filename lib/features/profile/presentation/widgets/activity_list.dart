import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/features/profile/presentation/cubits/activity_logs/activitylogs_cubit.dart';
import 'package:you/features/profile/presentation/widgets/timeline.dart';

// ignore: must_be_immutable
class ActivityLogsScreen extends HookWidget {
  final ScrollController? scrollController;
  ActivityLogsScreen({Key? key, this.scrollController}) : super(key: key);
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
            BlocProvider.of<ActivitylogsCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<ActivitylogsCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    }

    return BlocBuilder<ActivitylogsCubit, ActivityLogsState>(
      builder: (context, state) {
        if (state is InitialActivityLogs)
          BlocProvider.of<ActivitylogsCubit>(context).fetch();

        if (state.currentActivityLogs == null) {
          return LoadingWidget();
        } else {
          lastLength = state.currentActivityLogs!.data!.length;
          return RefreshIndicator(
            onRefresh: () async {
              BlocProvider.of<ActivitylogsCubit>(context).fetch();
              return await Future.delayed(Duration(seconds: 3));
            },
            child: state.currentActivityLogs!.data!.isEmpty
                ? Center(
                    child: Text(
                      "Wow Such a empty!!!",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    cacheExtent: 0,
                    controller: (scrollController == null) ? controller : null,
                    padding: EdgeInsets.only(top: 5),
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      if (index ==
                          state.currentActivityLogs!.data!.length) if (state
                              .currentActivityLogs?.meta?.current_page !=
                          state.currentActivityLogs?.meta?.last_page)
                        return LoadingWidget();
                      else
                        return SizedBox();

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (index == 0)
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(DateFormat.yMMMMd().format(state
                                      .currentActivityLogs!
                                      .data![index]
                                      .created_at!)),
                                )
                              : state.currentActivityLogs!.data![index]
                                          .created_at! ==
                                      state.currentActivityLogs!
                                          .data![index - 1].created_at!
                                  ? SizedBox.shrink()
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(DateFormat.yMMMMd().format(
                                          state.currentActivityLogs!
                                              .data![index].created_at!)),
                                    ),
                          ActivityTimeLineTile(
                              activity:
                                  state.currentActivityLogs!.data![index]),
                        ],
                      );
                    },
                    itemCount: state.currentActivityLogs!.data!.length + 1),
          );
        }
      },
    );
  }
}
