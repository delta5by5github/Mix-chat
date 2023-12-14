// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'twittertweeting_item_model.dart';

/// This class defines the variables used in the [twitter_tweeting_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterTweetingModel extends Equatable {
  TwitterTweetingModel({this.twittertweetingItemList = const []}) {}

  List<TwittertweetingItemModel> twittertweetingItemList;

  TwitterTweetingModel copyWith(
      {List<TwittertweetingItemModel>? twittertweetingItemList}) {
    return TwitterTweetingModel(
      twittertweetingItemList:
          twittertweetingItemList ?? this.twittertweetingItemList,
    );
  }

  @override
  List<Object?> get props => [twittertweetingItemList];
}
