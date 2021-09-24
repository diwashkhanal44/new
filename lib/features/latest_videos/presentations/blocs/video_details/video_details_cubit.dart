import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:you/features/latest_videos/models/LatestVideos/VideoModel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'video_details_state.dart';

class VideoDetailsCubit extends Cubit<VideoDetailsState> {
  VideoDetailsCubit() : super(VideoDetailsStateInitial());

  initiateVideoController(Datum videoData) async {
    final _controller = YoutubePlayerController(
      initialVideoId: videoData.video_id!,
      flags: YoutubePlayerFlags(autoPlay: true),
    );
    emit(VideoDetailsStateLoaded(_controller));
  }

  pauseVideo() => state.controller?.pause();

  playVideo() => state.controller?.play();

  changeCurrentVideo(Datum videoData) {
    pauseVideo();
    initiateVideoController(videoData);
  }
}
