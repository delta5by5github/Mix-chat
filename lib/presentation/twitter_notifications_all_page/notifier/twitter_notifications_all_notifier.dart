import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tweetcomponentlist_item_model.dart';
import 'package:mix_chat/presentation/twitter_notifications_all_page/models/twitter_notifications_all_model.dart';
part 'twitter_notifications_all_state.dart';

final twitterNotificationsAllNotifier = StateNotifierProvider<
    TwitterNotificationsAllNotifier, TwitterNotificationsAllState>(
  (ref) => TwitterNotificationsAllNotifier(TwitterNotificationsAllState(
    twitterNotificationsAllModelObj:
        TwitterNotificationsAllModel(tweetcomponentlistItemList: [
      TweetcomponentlistItemModel(
          tweetImage: ImageConstant.imgStarSolidIcon,
          circleImage: ImageConstant.imgRound4)
    ]),
  )),
);

/// A notifier that manages the state of a TwitterNotificationsAll according to the event that is dispatched to it.
class TwitterNotificationsAllNotifier
    extends StateNotifier<TwitterNotificationsAllState> {
  TwitterNotificationsAllNotifier(TwitterNotificationsAllState state)
      : super(state) {}
}
