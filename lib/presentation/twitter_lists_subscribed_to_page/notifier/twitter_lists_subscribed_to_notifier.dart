import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_lists_subscribed_to_page/models/twitter_lists_subscribed_to_model.dart';
part 'twitter_lists_subscribed_to_state.dart';

final twitterListsSubscribedToNotifier = StateNotifierProvider<
    TwitterListsSubscribedToNotifier, TwitterListsSubscribedToState>(
  (ref) => TwitterListsSubscribedToNotifier(TwitterListsSubscribedToState(
    twitterListsSubscribedToModelObj: TwitterListsSubscribedToModel(),
  )),
);

/// A notifier that manages the state of a TwitterListsSubscribedTo according to the event that is dispatched to it.
class TwitterListsSubscribedToNotifier
    extends StateNotifier<TwitterListsSubscribedToState> {
  TwitterListsSubscribedToNotifier(TwitterListsSubscribedToState state)
      : super(state) {}
}
