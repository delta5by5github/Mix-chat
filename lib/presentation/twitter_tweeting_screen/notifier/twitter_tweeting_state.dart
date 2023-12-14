// ignore_for_file: must_be_immutable

part of 'twitter_tweeting_notifier.dart';

/// Represents the state of TwitterTweeting in the application.
class TwitterTweetingState extends Equatable {
  TwitterTweetingState({this.twitterTweetingModelObj});

  TwitterTweetingModel? twitterTweetingModelObj;

  @override
  List<Object?> get props => [
        twitterTweetingModelObj,
      ];

  TwitterTweetingState copyWith(
      {TwitterTweetingModel? twitterTweetingModelObj}) {
    return TwitterTweetingState(
      twitterTweetingModelObj:
          twitterTweetingModelObj ?? this.twitterTweetingModelObj,
    );
  }
}
