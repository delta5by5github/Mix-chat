import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_profile_media_page/models/twitter_profile_media_model.dart';
part 'twitter_profile_media_state.dart';

final twitterProfileMediaNotifier = StateNotifierProvider<
    TwitterProfileMediaNotifier, TwitterProfileMediaState>(
  (ref) => TwitterProfileMediaNotifier(TwitterProfileMediaState(
    twitterProfileMediaModelObj: TwitterProfileMediaModel(),
  )),
);

/// A notifier that manages the state of a TwitterProfileMedia according to the event that is dispatched to it.
class TwitterProfileMediaNotifier
    extends StateNotifier<TwitterProfileMediaState> {
  TwitterProfileMediaNotifier(TwitterProfileMediaState state) : super(state) {}
}
