import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_video_player_screen/models/twitter_video_player_model.dart';
part 'twitter_video_player_state.dart';

final twitterVideoPlayerNotifier =
    StateNotifierProvider<TwitterVideoPlayerNotifier, TwitterVideoPlayerState>(
        (ref) => TwitterVideoPlayerNotifier(TwitterVideoPlayerState(
            twitterVideoPlayerModelObj: TwitterVideoPlayerModel())));

/// A notifier that manages the state of a TwitterVideoPlayer according to the event that is dispatched to it.
class TwitterVideoPlayerNotifier
    extends StateNotifier<TwitterVideoPlayerState> {
  TwitterVideoPlayerNotifier(TwitterVideoPlayerState state) : super(state);
}
