import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_menu_draweritem/models/twitter_menu_model.dart';
part 'twitter_menu_state.dart';

final twitterMenuNotifier =
    StateNotifierProvider<TwitterMenuNotifier, TwitterMenuState>(
  (ref) => TwitterMenuNotifier(TwitterMenuState(
    twitterMenuModelObj: TwitterMenuModel(),
  )),
);

/// A notifier that manages the state of a TwitterMenu according to the event that is dispatched to it.
class TwitterMenuNotifier extends StateNotifier<TwitterMenuState> {
  TwitterMenuNotifier(TwitterMenuState state) : super(state) {}
}
