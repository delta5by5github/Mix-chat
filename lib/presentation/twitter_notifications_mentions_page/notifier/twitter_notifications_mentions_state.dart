// ignore_for_file: must_be_immutable

part of 'twitter_notifications_mentions_notifier.dart';

/// Represents the state of TwitterNotificationsMentions in the application.
class TwitterNotificationsMentionsState extends Equatable {
  TwitterNotificationsMentionsState(
      {this.twitterNotificationsMentionsModelObj});

  TwitterNotificationsMentionsModel? twitterNotificationsMentionsModelObj;

  @override
  List<Object?> get props => [
        twitterNotificationsMentionsModelObj,
      ];

  TwitterNotificationsMentionsState copyWith(
      {TwitterNotificationsMentionsModel?
          twitterNotificationsMentionsModelObj}) {
    return TwitterNotificationsMentionsState(
      twitterNotificationsMentionsModelObj:
          twitterNotificationsMentionsModelObj ??
              this.twitterNotificationsMentionsModelObj,
    );
  }
}
