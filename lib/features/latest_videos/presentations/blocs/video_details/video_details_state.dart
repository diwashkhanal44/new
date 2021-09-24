part of 'video_details_cubit.dart';

abstract class VideoDetailsState extends Equatable {
  final YoutubePlayerController? controller;
  VideoDetailsState({required this.controller});
  @override
  List<Object?> get props => [controller];
}

class VideoDetailsStateInitial extends VideoDetailsState {
  VideoDetailsStateInitial() : super(controller: null);
}

class VideoDetailsStateLoaded extends VideoDetailsState {
  VideoDetailsStateLoaded(YoutubePlayerController controller)
      : super(controller: controller);
}
