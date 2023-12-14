import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_tweet_of_someone_screen/models/twitter_tweet_of_someone_model.dart';
part 'twitter_tweet_of_someone_state.dart';

final twitterTweetOfSomeoneNotifier = StateNotifierProvider<
        TwitterTweetOfSomeoneNotifier, TwitterTweetOfSomeoneState>(
    (ref) => TwitterTweetOfSomeoneNotifier(TwitterTweetOfSomeoneState(
        timestampController: TextEditingController(),
        replyPromptController: TextEditingController(),
        twitterTweetOfSomeoneModelObj: TwitterTweetOfSomeoneModel())));

/// A notifier that manages the state of a TwitterTweetOfSomeone according to the event that is dispatched to it.
class TwitterTweetOfSomeoneNotifier
    extends StateNotifier<TwitterTweetOfSomeoneState> {
  TwitterTweetOfSomeoneNotifier(TwitterTweetOfSomeoneState state)
      : super(state);
}
