// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'teamlist_item_model.dart';

/// This class defines the variables used in the [twitter_lists_members_of_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterListsMembersOfModel extends Equatable {
  TwitterListsMembersOfModel({this.teamlistItemList = const []}) {}

  List<TeamlistItemModel> teamlistItemList;

  TwitterListsMembersOfModel copyWith(
      {List<TeamlistItemModel>? teamlistItemList}) {
    return TwitterListsMembersOfModel(
      teamlistItemList: teamlistItemList ?? this.teamlistItemList,
    );
  }

  @override
  List<Object?> get props => [teamlistItemList];
}
