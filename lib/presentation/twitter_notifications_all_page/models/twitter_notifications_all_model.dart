// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'tweetcomponentlist_item_model.dart';

/// This class defines the variables used in the [twitter_notifications_all_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterNotificationsAllModel extends Equatable {
  TwitterNotificationsAllModel({this.tweetcomponentlistItemList = const []}) {}

  List<TweetcomponentlistItemModel> tweetcomponentlistItemList;

  TwitterNotificationsAllModel copyWith(
      {List<TweetcomponentlistItemModel>? tweetcomponentlistItemList}) {
    return TwitterNotificationsAllModel(
      tweetcomponentlistItemList:
          tweetcomponentlistItemList ?? this.tweetcomponentlistItemList,
    );
  }

  @override
  List<Object?> get props => [tweetcomponentlistItemList];
}
