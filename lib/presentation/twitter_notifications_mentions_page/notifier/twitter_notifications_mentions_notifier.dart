import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_notifications_mentions_page/models/twitter_notifications_mentions_model.dart';
part 'twitter_notifications_mentions_state.dart';

final twitterNotificationsMentionsNotifier = StateNotifierProvider<
    TwitterNotificationsMentionsNotifier, TwitterNotificationsMentionsState>(
  (ref) =>
      TwitterNotificationsMentionsNotifier(TwitterNotificationsMentionsState(
    twitterNotificationsMentionsModelObj: TwitterNotificationsMentionsModel(),
  )),
);

/// A notifier that manages the state of a TwitterNotificationsMentions according to the event that is dispatched to it.
class TwitterNotificationsMentionsNotifier
    extends StateNotifier<TwitterNotificationsMentionsState> {
  TwitterNotificationsMentionsNotifier(TwitterNotificationsMentionsState state)
      : super(state) {}
}
