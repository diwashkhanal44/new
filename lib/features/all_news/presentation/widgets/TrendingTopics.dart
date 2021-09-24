import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:you/features/all_news/models/NewsTopics.dart';
import 'package:you/features/all_news/presentation/screens/blocs/cubit/newstopics_cubit.dart';
import 'package:you/features/category_wise_news/presentation/screens/CategoricalNews.dart';
import 'package:you/features/category_wise_news/repository/CategoryWiseNews.dart';

class TrendingTopics extends StatelessWidget {
  TrendingTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstopicsCubit, NewstopicsState>(
        builder: (context, state) {
      return state.map(
          initial: (initial) {
            BlocProvider.of<NewstopicsCubit>(context)
                .fetch(langauge: AppLocalizations.of(context)!.localeName);

            return Center(child: CircularProgressIndicator(strokeWidth: 1));
          },
          loading: (loading) =>
              Center(child: CircularProgressIndicator(strokeWidth: 1)),
          failed: (failed) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(failed.failureMessage),
                    SizedBox(height: 10),
                    TextButton.icon(
                        onPressed: () =>
                            BlocProvider.of<NewstopicsCubit>(context).fetch(
                                langauge:
                                    AppLocalizations.of(context)!.localeName),
                        icon: Icon(Icons.refresh_outlined),
                        label: Text("Try Again"))
                  ],
                ),
              ),
          loaded: (loaded) => Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/trending.svg",
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(width: 10),
                        Text(
                            AppLocalizations.of(context)!
                                .trendingTopic
                                .toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                      ],
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 20,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 5),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: false,
                        itemBuilder: (context, index) => TextButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.resolveWith(
                                    (states) =>
                                        EdgeInsets.symmetric(horizontal: 4))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TopicCategorialNews(
                                          data: loaded
                                              .newsCategory.data![index])));
                            },
                            child: Text(
                              " #${(loaded.newsCategory.data![index].name ?? 'N/A')} ",
                              style: TextStyle(color: Colors.white),
                            )),
                        itemCount: loaded.newsCategory.data!.length,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ));
    });
  }
}

class TopicCategorialNews extends StatelessWidget {
  final Datum data;
  const TopicCategorialNews({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("#${data.name}"),
      ),
      body: CategoricalNews(
        categorySlug: data.slug!,
        newsType: NewsType.Topic,
      ),
    );
  }
}

class TrendingTopic {
  final String name;
  final Color backgroundColor;
  final VoidCallback? onTap;

  TrendingTopic(
      {required this.name, required this.backgroundColor, this.onTap});
}
