import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_messages_settings_tab_container_screen/models/twitter_messages_settings_tab_container_model.dart';
part 'twitter_messages_settings_tab_container_state.dart';

final twitterMessagesSettingsTabContainerNotifier = StateNotifierProvider<
        TwitterMessagesSettingsTabContainerNotifier,
        TwitterMessagesSettingsTabContainerState>(
    (ref) => TwitterMessagesSettingsTabContainerNotifier(
        TwitterMessagesSettingsTabContainerState(
            isSelectedSwitch: false,
            twitterMessagesSettingsTabContainerModelObj:
                TwitterMessagesSettingsTabContainerModel())));

/// A notifier that manages the state of a TwitterMessagesSettingsTabContainer according to the event that is dispatched to it.
class TwitterMessagesSettingsTabContainerNotifier
    extends StateNotifier<TwitterMessagesSettingsTabContainerState> {
  TwitterMessagesSettingsTabContainerNotifier(
      TwitterMessagesSettingsTabContainerState state)
      : super(state);

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}
