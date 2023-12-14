// ignore_for_file: must_be_immutable

part of 'twitter_home_container_notifier.dart';

/// Represents the state of TwitterHomeContainer in the application.
class TwitterHomeContainerState extends Equatable {
  TwitterHomeContainerState({this.twitterHomeContainerModelObj});

  TwitterHomeContainerModel? twitterHomeContainerModelObj;

  @override
  List<Object?> get props => [
        twitterHomeContainerModelObj,
      ];

  TwitterHomeContainerState copyWith(
      {TwitterHomeContainerModel? twitterHomeContainerModelObj}) {
    return TwitterHomeContainerState(
      twitterHomeContainerModelObj:
          twitterHomeContainerModelObj ?? this.twitterHomeContainerModelObj,
    );
  }
}
