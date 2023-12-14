import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_retweet_bottomsheet/models/twitter_retweet_model.dart';
part 'twitter_retweet_state.dart';

final twitterRetweetNotifier =
    StateNotifierProvider<TwitterRetweetNotifier, TwitterRetweetState>(
  (ref) => TwitterRetweetNotifier(TwitterRetweetState(
    twitterRetweetModelObj: TwitterRetweetModel(),
  )),
);

/// A notifier that manages the state of a TwitterRetweet according to the event that is dispatched to it.
class TwitterRetweetNotifier extends StateNotifier<TwitterRetweetState> {
  TwitterRetweetNotifier(TwitterRetweetState state) : super(state) {}
}
