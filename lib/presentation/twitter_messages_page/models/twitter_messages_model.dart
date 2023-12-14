// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'twittermessages_item_model.dart';

/// This class defines the variables used in the [twitter_messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterMessagesModel extends Equatable {
  TwitterMessagesModel({this.twittermessagesItemList = const []}) {}

  List<TwittermessagesItemModel> twittermessagesItemList;

  TwitterMessagesModel copyWith(
      {List<TwittermessagesItemModel>? twittermessagesItemList}) {
    return TwitterMessagesModel(
      twittermessagesItemList:
          twittermessagesItemList ?? this.twittermessagesItemList,
    );
  }

  @override
  List<Object?> get props => [twittermessagesItemList];
}
