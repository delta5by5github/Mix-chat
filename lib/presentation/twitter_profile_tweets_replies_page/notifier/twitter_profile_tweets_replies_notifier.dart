import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_profile_tweets_replies_page/models/twitter_profile_tweets_replies_model.dart';
part 'twitter_profile_tweets_replies_state.dart';

final twitterProfileTweetsRepliesNotifier = StateNotifierProvider<
    TwitterProfileTweetsRepliesNotifier, TwitterProfileTweetsRepliesState>(
  (ref) => TwitterProfileTweetsRepliesNotifier(TwitterProfileTweetsRepliesState(
    twitterProfileTweetsRepliesModelObj: TwitterProfileTweetsRepliesModel(),
  )),
);

/// A notifier that manages the state of a TwitterProfileTweetsReplies according to the event that is dispatched to it.
class TwitterProfileTweetsRepliesNotifier
    extends StateNotifier<TwitterProfileTweetsRepliesState> {
  TwitterProfileTweetsRepliesNotifier(TwitterProfileTweetsRepliesState state)
      : super(state) {}
}
