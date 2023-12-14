// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchfield_item_model.dart';

/// This class defines the variables used in the [twitter_new_message_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterNewMessageModel extends Equatable {
  TwitterNewMessageModel({this.searchfieldItemList = const []}) {}

  List<SearchfieldItemModel> searchfieldItemList;

  TwitterNewMessageModel copyWith(
      {List<SearchfieldItemModel>? searchfieldItemList}) {
    return TwitterNewMessageModel(
      searchfieldItemList: searchfieldItemList ?? this.searchfieldItemList,
    );
  }

  @override
  List<Object?> get props => [searchfieldItemList];
}
