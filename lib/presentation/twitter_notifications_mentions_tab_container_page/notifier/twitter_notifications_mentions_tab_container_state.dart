// ignore_for_file: must_be_immutable

part of 'twitter_notifications_mentions_tab_container_notifier.dart';

/// Represents the state of TwitterNotificationsMentionsTabContainer in the application.
class TwitterNotificationsMentionsTabContainerState extends Equatable {
  TwitterNotificationsMentionsTabContainerState(
      {this.twitterNotificationsMentionsTabContainerModelObj});

  TwitterNotificationsMentionsTabContainerModel?
      twitterNotificationsMentionsTabContainerModelObj;

  @override
  List<Object?> get props => [
        twitterNotificationsMentionsTabContainerModelObj,
      ];

  TwitterNotificationsMentionsTabContainerState copyWith(
      {TwitterNotificationsMentionsTabContainerModel?
          twitterNotificationsMentionsTabContainerModelObj}) {
    return TwitterNotificationsMentionsTabContainerState(
      twitterNotificationsMentionsTabContainerModelObj:
          twitterNotificationsMentionsTabContainerModelObj ??
              this.twitterNotificationsMentionsTabContainerModelObj,
    );
  }
}
