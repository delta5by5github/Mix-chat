import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_lists_subscribed_to_tab_container_screen/models/twitter_lists_subscribed_to_tab_container_model.dart';
part 'twitter_lists_subscribed_to_tab_container_state.dart';

final twitterListsSubscribedToTabContainerNotifier = StateNotifierProvider<
        TwitterListsSubscribedToTabContainerNotifier,
        TwitterListsSubscribedToTabContainerState>(
    (ref) => TwitterListsSubscribedToTabContainerNotifier(
        TwitterListsSubscribedToTabContainerState(
            twitterListsSubscribedToTabContainerModelObj:
                TwitterListsSubscribedToTabContainerModel())));

/// A notifier that manages the state of a TwitterListsSubscribedToTabContainer according to the event that is dispatched to it.
class TwitterListsSubscribedToTabContainerNotifier
    extends StateNotifier<TwitterListsSubscribedToTabContainerState> {
  TwitterListsSubscribedToTabContainerNotifier(
      TwitterListsSubscribedToTabContainerState state)
      : super(state);
}
