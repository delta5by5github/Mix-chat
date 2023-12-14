// ignore_for_file: must_be_immutable

part of 'twitter_lists_subscribed_to_notifier.dart';

/// Represents the state of TwitterListsSubscribedTo in the application.
class TwitterListsSubscribedToState extends Equatable {
  TwitterListsSubscribedToState({this.twitterListsSubscribedToModelObj});

  TwitterListsSubscribedToModel? twitterListsSubscribedToModelObj;

  @override
  List<Object?> get props => [
        twitterListsSubscribedToModelObj,
      ];

  TwitterListsSubscribedToState copyWith(
      {TwitterListsSubscribedToModel? twitterListsSubscribedToModelObj}) {
    return TwitterListsSubscribedToState(
      twitterListsSubscribedToModelObj: twitterListsSubscribedToModelObj ??
          this.twitterListsSubscribedToModelObj,
    );
  }
}
