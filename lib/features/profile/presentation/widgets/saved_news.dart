import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/home/presentation/widgets/FullNewsCardShimmer.dart';
import 'package:you/features/profile/presentation/cubits/saved_news/cubit/saved_news_cubit.dart';
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';

// ignore: must_be_immutable
class SavedNewsScreen extends HookWidget {
  final ScrollController? scrollController;
  SavedNewsScreen({Key? key, this.scrollController}) : super(key: key);
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
            BlocProvider.of<SavedNewsCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<SavedNewsCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    }

    return BlocBuilder<SavedNewsCubit, SavedNewsState>(
      builder: (context, state) {
        if (state is InitialSavedNews)
          BlocProvider.of<SavedNewsCubit>(context).fetch();

        if (state.currentSavedNews == null) {
          return FullNewsCardShimmer();
        } else {
          lastLength = state.currentSavedNews!.data!.length;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocProvider(
                create: (context) => sl<SinglenewshandlerCubit>(),
                child: Builder(
                  builder: (context) => OutlinedButton.icon(
                    onPressed: () {
                      state.currentSavedNews?.data?.forEach((element) {
                        if (element.id != null)
                          BlocProvider.of<SinglenewshandlerCubit>(context)
                              .bookMarkRemove(element.id!);
                      });

                      BlocProvider.of<SavedNewsCubit>(context).fetch();
                    },
                    icon: Icon(Icons.delete),
                    label: Text("Delete All"),
                    style: ButtonStyle(
                        side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide(color: Colors.red)),
                        foregroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.red)),
                  ),
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<SavedNewsCubit>(context).fetchnew();
                    return await Future.delayed(Duration(seconds: 3));
                  },
                  child: state.currentSavedNews!.data!.isEmpty
                      ? Center(
                          child: Text("Your saved news will appear here.",
                              style: Theme.of(context).textTheme.headline6))
                      : ListView.builder(
                          shrinkWrap: true,
                          cacheExtent: 0,
                          controller:
                              (scrollController == null) ? controller : null,
                          padding: EdgeInsets.only(top: 5),
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            if (index ==
                                state.currentSavedNews!.data!.length) if (state
                                    .currentSavedNews?.meta?.current_page !=
                                state.currentSavedNews?.meta?.last_page)
                              return LoadingWidget();
                            else
                              return SizedBox();

                            return FullSizeNewsCard(
                              hidePublisherInfo: true,
                              isSavedList: true,
                              newsEntity: state.currentSavedNews!.data![index],
                            );
                          },
                          itemCount: state.currentSavedNews!.data!.length + 1),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
