import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_tweet_of_mine_screen/models/twitter_tweet_of_mine_model.dart';
part 'twitter_tweet_of_mine_state.dart';

final twitterTweetOfMineNotifier =
    StateNotifierProvider<TwitterTweetOfMineNotifier, TwitterTweetOfMineState>(
        (ref) => TwitterTweetOfMineNotifier(TwitterTweetOfMineState(
            timestampController: TextEditingController(),
            addTweetController: TextEditingController(),
            twitterTweetOfMineModelObj: TwitterTweetOfMineModel())));

/// A notifier that manages the state of a TwitterTweetOfMine according to the event that is dispatched to it.
class TwitterTweetOfMineNotifier
    extends StateNotifier<TwitterTweetOfMineState> {
  TwitterTweetOfMineNotifier(TwitterTweetOfMineState state) : super(state);
}
