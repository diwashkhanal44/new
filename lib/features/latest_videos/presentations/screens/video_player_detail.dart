import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:share/share.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';
import 'package:you/features/latest_videos/presentations/blocs/video_details/video_details_cubit.dart';
import 'package:you/features/latest_videos/presentations/screens/publisher_video_listing.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerView extends StatefulWidget {
  final Datum selectedVideoData;
  const VideoPlayerView({
    Key? key,
    required this.selectedVideoData,
  }) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayerView>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<VideoDetailsCubit>(context)
        .changeCurrentVideo(widget.selectedVideoData);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          ListView(
            children: [
              BlocBuilder<VideoDetailsCubit, VideoDetailsState>(
                builder: (context, state) {
                  if (state.controller == null) {
                    return Container(
                      child: Image.asset(
                        "assets/you_logo.png",
                        height: 180,
                        width: double.infinity,
                      ),
                    );
                  }

                  String html = '''
           <iframe width="200" height='200'
            src="https://www.facebook.com/v2.3/plugins/video.php? 
            allowfullscreen=false&autoplay=true&href=${widget.selectedVideoData.video_link}" </iframe>
     ''';

                  return YoutubePlayerBuilder(
                      player: YoutubePlayer(
                        controller: state.controller!,
                      ),
                      builder: (context, player) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (widget.selectedVideoData.source != "facebook")
                                ? player
                                : Container(
                                    height: 200,
                                    child: HtmlWidget(
                                      html,
                                      webView: true,
                                    ),
                                  ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "${widget.selectedVideoData.name}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                              radius: 10,
                                              backgroundImage: AssetImage(
                                                  "assets/you_logo.png")),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${widget.selectedVideoData.publisher!.name}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(Icons.share),
                                            onPressed: () {
                                              Share.share(widget
                                                  .selectedVideoData
                                                  .video_link!);
                                            },
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  if (widget
                                          .selectedVideoData.meta_description !=
                                      null)
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "${widget.selectedVideoData.meta_description}")),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Videos From the same publisher",
                                  style: Theme.of(context).textTheme.headline6),
                            ),
                            PublisherVideoListing(
                                publisherID:
                                    widget.selectedVideoData.publisher!.id!),
                          ],
                        );
                      });
                },
              ),
            ],
          ),
          BackButton(),
        ],
      ),
    ));
  }

  @override
  bool get wantKeepAlive => true;
}
