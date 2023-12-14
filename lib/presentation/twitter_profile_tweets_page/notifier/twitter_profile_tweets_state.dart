// ignore_for_file: must_be_immutable

part of 'twitter_profile_tweets_notifier.dart';

/// Represents the state of TwitterProfileTweets in the application.
class TwitterProfileTweetsState extends Equatable {
  TwitterProfileTweetsState({this.twitterProfileTweetsModelObj});

  TwitterProfileTweetsModel? twitterProfileTweetsModelObj;

  @override
  List<Object?> get props => [
        twitterProfileTweetsModelObj,
      ];

  TwitterProfileTweetsState copyWith(
      {TwitterProfileTweetsModel? twitterProfileTweetsModelObj}) {
    return TwitterProfileTweetsState(
      twitterProfileTweetsModelObj:
          twitterProfileTweetsModelObj ?? this.twitterProfileTweetsModelObj,
    );
  }
}
