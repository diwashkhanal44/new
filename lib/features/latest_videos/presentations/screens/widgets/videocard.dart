import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';
import 'package:you/routes/auto_router.gr.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key, required this.data, this.shouldPop = false})
      : super(key: key);
  final Datum data;
  final bool shouldPop;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => shouldPop
          ? AutoRouter.of(context)
              .popAndPush(VideoPlayerView(selectedVideoData: data))
          : AutoRouter.of(context)
              .push(VideoPlayerView(selectedVideoData: data)),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://img.youtube.com/vi/${data.video_id}/sddefault.jpg",
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (_, __, ___) => Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.6),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/you_logo.png",
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                      errorWidget: (_, __, ___) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/you_logo.png",
                              height: 80,
                              width: 80,
                            ),
                          ),
                        );
                      }),
                ),
                Positioned(
                  left: 5,
                  bottom: 5,
                  child: Icon(
                    Icons.play_circle_outline_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "${data.name}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage("assets/you_logo.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${data.publisher!.name}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor:
                          Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.share,
                        // color: Theme.of(context).accentColor,
                      ),
                      onPressed: () {
                        Share.share(data.video_link!);
                      },
                    )
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("${data.meta_description ?? ''}")),
            Divider(),
          ],
        ),
      ),
    );
  }
}
