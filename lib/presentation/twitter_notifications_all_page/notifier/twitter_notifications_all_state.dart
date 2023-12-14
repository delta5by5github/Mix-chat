// ignore_for_file: must_be_immutable

part of 'twitter_notifications_all_notifier.dart';

/// Represents the state of TwitterNotificationsAll in the application.
class TwitterNotificationsAllState extends Equatable {
  TwitterNotificationsAllState({this.twitterNotificationsAllModelObj});

  TwitterNotificationsAllModel? twitterNotificationsAllModelObj;

  @override
  List<Object?> get props => [
        twitterNotificationsAllModelObj,
      ];

  TwitterNotificationsAllState copyWith(
      {TwitterNotificationsAllModel? twitterNotificationsAllModelObj}) {
    return TwitterNotificationsAllState(
      twitterNotificationsAllModelObj: twitterNotificationsAllModelObj ??
          this.twitterNotificationsAllModelObj,
    );
  }
}
