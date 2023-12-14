import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_home_page/models/twitter_home_model.dart';
part 'twitter_home_state.dart';

final twitterHomeNotifier =
    StateNotifierProvider<TwitterHomeNotifier, TwitterHomeState>(
  (ref) => TwitterHomeNotifier(TwitterHomeState(
    twitterHomeModelObj: TwitterHomeModel(),
  )),
);

/// A notifier that manages the state of a TwitterHome according to the event that is dispatched to it.
class TwitterHomeNotifier extends StateNotifier<TwitterHomeState> {
  TwitterHomeNotifier(TwitterHomeState state) : super(state) {}
}
