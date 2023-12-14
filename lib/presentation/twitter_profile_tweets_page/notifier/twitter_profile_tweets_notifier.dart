import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_profile_tweets_page/models/twitter_profile_tweets_model.dart';
part 'twitter_profile_tweets_state.dart';

final twitterProfileTweetsNotifier = StateNotifierProvider<
    TwitterProfileTweetsNotifier, TwitterProfileTweetsState>(
  (ref) => TwitterProfileTweetsNotifier(TwitterProfileTweetsState(
    twitterProfileTweetsModelObj: TwitterProfileTweetsModel(),
  )),
);

/// A notifier that manages the state of a TwitterProfileTweets according to the event that is dispatched to it.
class TwitterProfileTweetsNotifier
    extends StateNotifier<TwitterProfileTweetsState> {
  TwitterProfileTweetsNotifier(TwitterProfileTweetsState state)
      : super(state) {}
}
