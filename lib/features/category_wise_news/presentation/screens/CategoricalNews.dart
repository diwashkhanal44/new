import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/category_wise_news/presentation/service/cubit/categorical_news_cubit.dart';
import 'package:you/features/category_wise_news/repository/CategoryWiseNews.dart';

class CategoricalNews extends StatelessWidget {
  const CategoricalNews(
      {Key? key,
      this.scrollController,
      required this.categorySlug,
      this.newsType})
      : super(key: key);
  final ScrollController? scrollController;
  final String categorySlug;

  final NewsType? newsType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoricalNewsCubit>(),
      child: _CategoricalNews(
        key: key,
        categorySlug: categorySlug,
        scrollController: scrollController,
        newsType: newsType,
      ),
    );
  }
}

// ignore: must_be_immutable
class _CategoricalNews extends StatefulWidget {
  final NewsType? newsType;

  final ScrollController? scrollController;
  final String categorySlug;
  _CategoricalNews(
      {Key? key,
      this.scrollController,
      this.newsType,
      required this.categorySlug})
      : super(key: key);

  @override
  __CategoricalNewsState createState() => __CategoricalNewsState();
}

class __CategoricalNewsState extends State<_CategoricalNews>
    with AutomaticKeepAliveClientMixin {
  int lastLength = 0;
  int requestedLength = 0;

  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    if (widget.scrollController != null) {
      widget.scrollController!.addListener(() {
        if (widget.scrollController!.position.pixels >=
            widget.scrollController!.position.maxScrollExtent - 50) {
          if (lastLength != requestedLength) {
            BlocProvider.of<CategoricalNewsCubit>(context).fetchNextPage(
                categoricalSlug: widget.categorySlug,
                newsType: widget.newsType ?? NewsType.Category);
            requestedLength = lastLength;
          }
        }
      });
    } else {
      _scrollController = ScrollController();
      _scrollController.addListener(() {
        if (_scrollController.position.maxScrollExtent ==
            _scrollController.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<CategoricalNewsCubit>(context).fetchNextPage(
                categoricalSlug: widget.categorySlug,
                newsType: widget.newsType ?? NewsType.Category);
            requestedLength = lastLength;
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<CategoricalNewsCubit, CategoricalNewsState>(
      builder: (context, state) {
        if (state is InitialCategoricalNews)
          BlocProvider.of<CategoricalNewsCubit>(context).fetch(
              categoricalSlug: widget.categorySlug,
              newsType: widget.newsType ?? NewsType.Category);
        if (state.currentNews == null) {
          return LoadingWidget();
        } else {
          lastLength = state.currentNews!.data!.length;
          return Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<CategoricalNewsCubit>(context).fetch(
                        categoricalSlug: widget.categorySlug,
                        newsType: widget.newsType ?? NewsType.Category);
                    return await Future.delayed(Duration(seconds: 3));
                  },
                  child: state.currentNews!.data!.isEmpty
                      ? Center(
                          child: Text(
                          "Wow Such a empty!!!",
                          style: Theme.of(context).textTheme.headline6,
                        ))
                      : ListView.builder(
                          addAutomaticKeepAlives: true,
                          // separatorBuilder: (context, index) => Divider(),
                          shrinkWrap: true,
                          cacheExtent: 0,
                          controller: (widget.scrollController == null)
                              ? _scrollController
                              : null,
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

  @override
  bool get wantKeepAlive => true;
}
