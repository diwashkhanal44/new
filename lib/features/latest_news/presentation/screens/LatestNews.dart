import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/latest_news/presentation/service/cubit/latest_news_cubit.dart';

import '../../../../../app_localization.dart';

// ignore: must_be_immutable
class LatestNews extends HookWidget {
  final ScrollController? scrollController;
  LatestNews({Key? key, this.scrollController}) : super(key: key);
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
            BlocProvider.of<LatestNewsCubit>(context).fetchNextPage(
                language: AppLocalizations.of(context)!.localeName);
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<LatestNewsCubit>(context).fetchNextPage(
                language: AppLocalizations.of(context)!.localeName);
            requestedLength = lastLength;
          }
        }
      });
    }

    return BlocBuilder<LatestNewsCubit, LatestNewsState>(
      builder: (context, state) {
        if (state is InitialLatestNews)
          BlocProvider.of<LatestNewsCubit>(context)
              .fetch(language: AppLocalizations.of(context)!.localeName);

        if (state.currentNews == null) {
          return LoadingWidget();
        } else {
          lastLength = state.currentNews!.data!.length;
          return Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<LatestNewsCubit>(context).fetch(
                        language: AppLocalizations.of(context)!.localeName);
                    return await Future.delayed(Duration(seconds: 3));
                  },
                  child: state.currentNews!.data!.isEmpty
                      ? Center(
                          child: Text(
                          "Wow Such a empty!!!",
                          style: Theme.of(context).textTheme.headline6,
                        ))
                      : ListView.builder(
                          // separatorBuilder: (context, index) => Divider(),
                          shrinkWrap: true,
                          cacheExtent: 0,
                          controller:
                              (scrollController == null) ? controller : null,
                          padding: EdgeInsets.only(top: 5),
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            if (index ==
                                state.currentNews!.data!.length) if (state
                                    .currentNews?.meta?.current_page !=
                                state.currentNews?.meta?.last_page)
                              return LoadingWidget();
                            else
                              return SizedBox();

                            return FullSizeNewsCard(
                                newsEntity: state.currentNews!.data![index]);
                          },
                          itemCount: state.currentNews!.data!.length + 1),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
