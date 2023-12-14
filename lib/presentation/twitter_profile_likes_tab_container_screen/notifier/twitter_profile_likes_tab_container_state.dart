// ignore_for_file: must_be_immutable

part of 'twitter_profile_likes_tab_container_notifier.dart';

/// Represents the state of TwitterProfileLikesTabContainer in the application.
class TwitterProfileLikesTabContainerState extends Equatable {
  TwitterProfileLikesTabContainerState(
      {this.twitterProfileLikesTabContainerModelObj});

  TwitterProfileLikesTabContainerModel? twitterProfileLikesTabContainerModelObj;

  @override
  List<Object?> get props => [
        twitterProfileLikesTabContainerModelObj,
      ];

  TwitterProfileLikesTabContainerState copyWith(
      {TwitterProfileLikesTabContainerModel?
          twitterProfileLikesTabContainerModelObj}) {
    return TwitterProfileLikesTabContainerState(
      twitterProfileLikesTabContainerModelObj:
          twitterProfileLikesTabContainerModelObj ??
              this.twitterProfileLikesTabContainerModelObj,
    );
  }
}
