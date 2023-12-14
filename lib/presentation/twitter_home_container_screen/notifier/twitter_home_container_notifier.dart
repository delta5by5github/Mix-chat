import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_home_container_screen/models/twitter_home_container_model.dart';
part 'twitter_home_container_state.dart';

final twitterHomeContainerNotifier = StateNotifierProvider<
        TwitterHomeContainerNotifier, TwitterHomeContainerState>(
    (ref) => TwitterHomeContainerNotifier(TwitterHomeContainerState(
        twitterHomeContainerModelObj: TwitterHomeContainerModel())));

/// A notifier that manages the state of a TwitterHomeContainer according to the event that is dispatched to it.
class TwitterHomeContainerNotifier
    extends StateNotifier<TwitterHomeContainerState> {
  TwitterHomeContainerNotifier(TwitterHomeContainerState state) : super(state);
}
