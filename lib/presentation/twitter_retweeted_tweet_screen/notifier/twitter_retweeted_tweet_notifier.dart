import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_retweeted_tweet_screen/models/twitter_retweeted_tweet_model.dart';
part 'twitter_retweeted_tweet_state.dart';

final twitterRetweetedTweetNotifier = StateNotifierProvider<
        TwitterRetweetedTweetNotifier, TwitterRetweetedTweetState>(
    (ref) => TwitterRetweetedTweetNotifier(TwitterRetweetedTweetState(
        tweetyourreplyController: TextEditingController(),
        twitterRetweetedTweetModelObj: TwitterRetweetedTweetModel())));

/// A notifier that manages the state of a TwitterRetweetedTweet according to the event that is dispatched to it.
class TwitterRetweetedTweetNotifier
    extends StateNotifier<TwitterRetweetedTweetState> {
  TwitterRetweetedTweetNotifier(TwitterRetweetedTweetState state)
      : super(state);
}
