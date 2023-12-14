import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_messages_settings_page/models/twitter_messages_settings_model.dart';
part 'twitter_messages_settings_state.dart';

final twitterMessagesSettingsNotifier = StateNotifierProvider<
    TwitterMessagesSettingsNotifier, TwitterMessagesSettingsState>(
  (ref) => TwitterMessagesSettingsNotifier(TwitterMessagesSettingsState(
    isSelectedSwitch: false,
    twitterMessagesSettingsModelObj: TwitterMessagesSettingsModel(),
  )),
);

/// A notifier that manages the state of a TwitterMessagesSettings according to the event that is dispatched to it.
class TwitterMessagesSettingsNotifier
    extends StateNotifier<TwitterMessagesSettingsState> {
  TwitterMessagesSettingsNotifier(TwitterMessagesSettingsState state)
      : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}
