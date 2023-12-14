import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/twittermessages_item_model.dart';
import 'package:mix_chat/presentation/twitter_messages_page/models/twitter_messages_model.dart';
part 'twitter_messages_state.dart';

final twitterMessagesNotifier =
    StateNotifierProvider<TwitterMessagesNotifier, TwitterMessagesState>(
  (ref) => TwitterMessagesNotifier(TwitterMessagesState(
    searchController: TextEditingController(),
    twitterMessagesModelObj: TwitterMessagesModel(twittermessagesItemList: [
      TwittermessagesItemModel(
          circleImage: ImageConstant.imgRound9,
          text1: "12/2/19",
          text3: "You: You’re very welcome AzizDjan!"),
      TwittermessagesItemModel(circleImage: ImageConstant.imgRound55x55),
      TwittermessagesItemModel(
          circleImage: ImageConstant.imgRound13, text3: "12/2/19"),
      TwittermessagesItemModel(circleImage: ImageConstant.imgRound14)
    ]),
  )),
);

/// A notifier that manages the state of a TwitterMessages according to the event that is dispatched to it.
class TwitterMessagesNotifier extends StateNotifier<TwitterMessagesState> {
  TwitterMessagesNotifier(TwitterMessagesState state) : super(state) {}
}
