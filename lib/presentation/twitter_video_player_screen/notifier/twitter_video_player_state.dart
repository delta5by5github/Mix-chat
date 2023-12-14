// ignore_for_file: must_be_immutable

part of 'twitter_video_player_notifier.dart';

/// Represents the state of TwitterVideoPlayer in the application.
class TwitterVideoPlayerState extends Equatable {
  TwitterVideoPlayerState({this.twitterVideoPlayerModelObj});

  TwitterVideoPlayerModel? twitterVideoPlayerModelObj;

  @override
  List<Object?> get props => [
        twitterVideoPlayerModelObj,
      ];

  TwitterVideoPlayerState copyWith(
      {TwitterVideoPlayerModel? twitterVideoPlayerModelObj}) {
    return TwitterVideoPlayerState(
      twitterVideoPlayerModelObj:
          twitterVideoPlayerModelObj ?? this.twitterVideoPlayerModelObj,
    );
  }
}
