import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/twittertweeting_item_model.dart';
import 'package:mix_chat/presentation/twitter_tweeting_screen/models/twitter_tweeting_model.dart';
part 'twitter_tweeting_state.dart';

final twitterTweetingNotifier =
    StateNotifierProvider<TwitterTweetingNotifier, TwitterTweetingState>(
  (ref) => TwitterTweetingNotifier(TwitterTweetingState(
    twitterTweetingModelObj: TwitterTweetingModel(twittertweetingItemList: [
      TwittertweetingItemModel(
          camera: ImageConstant.imgCamera,
          media: ImageConstant.imgMedia,
          media1: ImageConstant.imgMedia78x78,
          media2: ImageConstant.imgMedia1,
          media3: ImageConstant.imgMedia78x62)
    ]),
  )),
);

/// A notifier that manages the state of a TwitterTweeting according to the event that is dispatched to it.
class TwitterTweetingNotifier extends StateNotifier<TwitterTweetingState> {
  TwitterTweetingNotifier(TwitterTweetingState state) : super(state) {}
}
