import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_settings_and_privacy_screen/models/twitter_settings_and_privacy_model.dart';
part 'twitter_settings_and_privacy_state.dart';

final twitterSettingsAndPrivacyNotifier = StateNotifierProvider<
    TwitterSettingsAndPrivacyNotifier, TwitterSettingsAndPrivacyState>(
  (ref) => TwitterSettingsAndPrivacyNotifier(TwitterSettingsAndPrivacyState(
    twitterSettingsAndPrivacyModelObj: TwitterSettingsAndPrivacyModel(),
  )),
);

/// A notifier that manages the state of a TwitterSettingsAndPrivacy according to the event that is dispatched to it.
class TwitterSettingsAndPrivacyNotifier
    extends StateNotifier<TwitterSettingsAndPrivacyState> {
  TwitterSettingsAndPrivacyNotifier(TwitterSettingsAndPrivacyState state)
      : super(state) {}
}
