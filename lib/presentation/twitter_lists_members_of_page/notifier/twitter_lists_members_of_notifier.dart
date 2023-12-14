import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/teamlist_item_model.dart';
import 'package:mix_chat/presentation/twitter_lists_members_of_page/models/twitter_lists_members_of_model.dart';
part 'twitter_lists_members_of_state.dart';

final twitterListsMembersOfNotifier = StateNotifierProvider<
    TwitterListsMembersOfNotifier, TwitterListsMembersOfState>(
  (ref) => TwitterListsMembersOfNotifier(TwitterListsMembersOfState(
    twitterListsMembersOfModelObj:
        TwitterListsMembersOfModel(teamlistItemList: [
      TeamlistItemModel(
          joshuaLawrence: "Joshua Lawrence",
          dTeams: "D-teams",
          systems: "systems",
          membersCounter: "277 members",
          userImage: ImageConstant.imgRound27),
      TeamlistItemModel(userImage: ImageConstant.imgPrimaryAccount),
      TeamlistItemModel(userImage: ImageConstant.imgRound28)
    ]),
  )),
);

/// A notifier that manages the state of a TwitterListsMembersOf according to the event that is dispatched to it.
class TwitterListsMembersOfNotifier
    extends StateNotifier<TwitterListsMembersOfState> {
  TwitterListsMembersOfNotifier(TwitterListsMembersOfState state)
      : super(state) {}
}
