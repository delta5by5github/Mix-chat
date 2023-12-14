// ignore_for_file: must_be_immutable

part of 'twitter_lists_subscribed_to_tab_container_notifier.dart';

/// Represents the state of TwitterListsSubscribedToTabContainer in the application.
class TwitterListsSubscribedToTabContainerState extends Equatable {
  TwitterListsSubscribedToTabContainerState(
      {this.twitterListsSubscribedToTabContainerModelObj});

  TwitterListsSubscribedToTabContainerModel?
      twitterListsSubscribedToTabContainerModelObj;

  @override
  List<Object?> get props => [
        twitterListsSubscribedToTabContainerModelObj,
      ];

  TwitterListsSubscribedToTabContainerState copyWith(
      {TwitterListsSubscribedToTabContainerModel?
          twitterListsSubscribedToTabContainerModelObj}) {
    return TwitterListsSubscribedToTabContainerState(
      twitterListsSubscribedToTabContainerModelObj:
          twitterListsSubscribedToTabContainerModelObj ??
              this.twitterListsSubscribedToTabContainerModelObj,
    );
  }
}
