import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_search_screen/models/twitter_search_model.dart';
part 'twitter_search_state.dart';

final twitterSearchNotifier =
    StateNotifierProvider<TwitterSearchNotifier, TwitterSearchState>(
  (ref) => TwitterSearchNotifier(TwitterSearchState(
    searchController: TextEditingController(),
    twitterSearchModelObj: TwitterSearchModel(),
  )),
);

/// A notifier that manages the state of a TwitterSearch according to the event that is dispatched to it.
class TwitterSearchNotifier extends StateNotifier<TwitterSearchState> {
  TwitterSearchNotifier(TwitterSearchState state) : super(state) {}
}
