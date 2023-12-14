import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_profile_likes_tab_container_screen/models/twitter_profile_likes_tab_container_model.dart';
part 'twitter_profile_likes_tab_container_state.dart';

final twitterProfileLikesTabContainerNotifier = StateNotifierProvider<
        TwitterProfileLikesTabContainerNotifier,
        TwitterProfileLikesTabContainerState>(
    (ref) => TwitterProfileLikesTabContainerNotifier(
        TwitterProfileLikesTabContainerState(
            twitterProfileLikesTabContainerModelObj:
                TwitterProfileLikesTabContainerModel())));

/// A notifier that manages the state of a TwitterProfileLikesTabContainer according to the event that is dispatched to it.
class TwitterProfileLikesTabContainerNotifier
    extends StateNotifier<TwitterProfileLikesTabContainerState> {
  TwitterProfileLikesTabContainerNotifier(
      TwitterProfileLikesTabContainerState state)
      : super(state);
}
