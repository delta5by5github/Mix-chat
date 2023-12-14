import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_profile_likes_page/models/twitter_profile_likes_model.dart';
part 'twitter_profile_likes_state.dart';

final twitterProfileLikesNotifier = StateNotifierProvider<
    TwitterProfileLikesNotifier, TwitterProfileLikesState>(
  (ref) => TwitterProfileLikesNotifier(TwitterProfileLikesState(
    twitterProfileLikesModelObj: TwitterProfileLikesModel(),
  )),
);

/// A notifier that manages the state of a TwitterProfileLikes according to the event that is dispatched to it.
class TwitterProfileLikesNotifier
    extends StateNotifier<TwitterProfileLikesState> {
  TwitterProfileLikesNotifier(TwitterProfileLikesState state) : super(state) {}
}
