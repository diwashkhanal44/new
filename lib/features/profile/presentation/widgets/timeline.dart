import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/latest_news/models/NewsModel.dart';
import 'package:you/features/profile/models/ActivityModel.dart' as am;
import 'package:you/features/single_news_handler/presentation/cubits/singlenewshandler/singlenewshandler_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class ActivityTimeLineTile extends StatefulWidget {
  const ActivityTimeLineTile({Key? key, required this.activity})
      : super(key: key);

  final am.Datum activity;

  @override
  _ActivityTimeLineTileState createState() => _ActivityTimeLineTileState();
}

class _ActivityTimeLineTileState extends State<ActivityTimeLineTile>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => sl<SinglenewshandlerCubit>(),
      child: BlocBuilder<SinglenewshandlerCubit, SinglenewshandlerState>(
        builder: (context, state) {
          state.maybeMap(
            orElse: () {},
            initial: (initial) {
              if (widget.activity.properties?.attributes?.news_id != null)
                BlocProvider.of<SinglenewshandlerCubit>(context)
                    .fetchSingleNewsData(
                        widget.activity.properties!.attributes!.news_id!);
            },
          );

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: ListTile(
              onTap: () {
                if (widget.activity.properties?.attributes?.news_id != null) {
                  final isDeleted =
                      widget.activity.description?.contains('deleted');

                  if (isDeleted == true)
                    AutoRouter.of(context).push(NewsWebView(
                        title: '',
                        newsId:
                            widget.activity.properties!.attributes!.news_id!));
                  else
                    AutoRouter.of(context).push(
                      MainCommentsListing(
                          newsId:
                              widget.activity.properties!.attributes!.news_id!),
                    );
                }
              },
              leading: SizedBox(
                height: 80,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: state.maybeMap(
                        orElse: () => defaultNewsProviderImageUrl,
                        loaded: (loaded) =>
                            loaded.singleNewsDetails.data?.image ??
                            defaultNewsProviderImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "${widget.activity.description} ",
                    ),
                    TextSpan(
                        text:
                            "${state.maybeMap(orElse: () => '', loaded: (loaded) => "in ${loaded.singleNewsDetails.data?.title ?? 'N/A'}")}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              subtitle:
                  Text(DateFormat.yMMMMd().format(widget.activity.created_at!)),
            ),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
