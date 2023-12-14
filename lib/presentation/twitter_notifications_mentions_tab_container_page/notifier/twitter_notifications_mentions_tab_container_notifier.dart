import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_notifications_mentions_tab_container_page/models/twitter_notifications_mentions_tab_container_model.dart';
part 'twitter_notifications_mentions_tab_container_state.dart';

final twitterNotificationsMentionsTabContainerNotifier = StateNotifierProvider<
    TwitterNotificationsMentionsTabContainerNotifier,
    TwitterNotificationsMentionsTabContainerState>(
  (ref) => TwitterNotificationsMentionsTabContainerNotifier(
      TwitterNotificationsMentionsTabContainerState(
    twitterNotificationsMentionsTabContainerModelObj:
        TwitterNotificationsMentionsTabContainerModel(),
  )),
);

/// A notifier that manages the state of a TwitterNotificationsMentionsTabContainer according to the event that is dispatched to it.
class TwitterNotificationsMentionsTabContainerNotifier
    extends StateNotifier<TwitterNotificationsMentionsTabContainerState> {
  TwitterNotificationsMentionsTabContainerNotifier(
      TwitterNotificationsMentionsTabContainerState state)
      : super(state) {}
}
