// ignore_for_file: must_be_immutable

part of 'twitter_lists_members_of_notifier.dart';

/// Represents the state of TwitterListsMembersOf in the application.
class TwitterListsMembersOfState extends Equatable {
  TwitterListsMembersOfState({this.twitterListsMembersOfModelObj});

  TwitterListsMembersOfModel? twitterListsMembersOfModelObj;

  @override
  List<Object?> get props => [
        twitterListsMembersOfModelObj,
      ];

  TwitterListsMembersOfState copyWith(
      {TwitterListsMembersOfModel? twitterListsMembersOfModelObj}) {
    return TwitterListsMembersOfState(
      twitterListsMembersOfModelObj:
          twitterListsMembersOfModelObj ?? this.twitterListsMembersOfModelObj,
    );
  }
}
