import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_trends_page/models/twitter_trends_model.dart';
part 'twitter_trends_state.dart';

final twitterTrendsNotifier =
    StateNotifierProvider<TwitterTrendsNotifier, TwitterTrendsState>(
  (ref) => TwitterTrendsNotifier(TwitterTrendsState(
    searchController: TextEditingController(),
    twitterTrendsModelObj: TwitterTrendsModel(),
  )),
);

/// A notifier that manages the state of a TwitterTrends according to the event that is dispatched to it.
class TwitterTrendsNotifier extends StateNotifier<TwitterTrendsState> {
  TwitterTrendsNotifier(TwitterTrendsState state) : super(state) {}
}
