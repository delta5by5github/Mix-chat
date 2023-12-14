import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchfield_item_model.dart';
import 'package:mix_chat/presentation/twitter_new_message_screen/models/twitter_new_message_model.dart';
part 'twitter_new_message_state.dart';

final twitterNewMessageNotifier =
    StateNotifierProvider<TwitterNewMessageNotifier, TwitterNewMessageState>(
        (ref) => TwitterNewMessageNotifier(TwitterNewMessageState(
                twitterNewMessageModelObj:
                    TwitterNewMessageModel(searchfieldItemList: [
              SearchfieldItemModel(
                  searchImage: ImageConstant.imgSearchOnsecondarycontainer,
                  searchText: "Search for people and groups"),
              SearchfieldItemModel(searchText: "AzizDjan"),
              SearchfieldItemModel(searchText: "Kieron Dotson"),
              SearchfieldItemModel(searchText: "Zack John"),
              SearchfieldItemModel(searchText: "Pixsellz"),
              SearchfieldItemModel(searchText: "Maximillian"),
              SearchfieldItemModel(searchText: "Tibitha Potter"),
              SearchfieldItemModel(searchText: "karennne")
            ]))));

/// A notifier that manages the state of a TwitterNewMessage according to the event that is dispatched to it.
class TwitterNewMessageNotifier extends StateNotifier<TwitterNewMessageState> {
  TwitterNewMessageNotifier(TwitterNewMessageState state) : super(state);
}
