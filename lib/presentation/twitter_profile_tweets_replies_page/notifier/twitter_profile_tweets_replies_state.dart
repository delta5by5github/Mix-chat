// ignore_for_file: must_be_immutable

part of 'twitter_profile_tweets_replies_notifier.dart';

/// Represents the state of TwitterProfileTweetsReplies in the application.
class TwitterProfileTweetsRepliesState extends Equatable {
  TwitterProfileTweetsRepliesState({this.twitterProfileTweetsRepliesModelObj});

  TwitterProfileTweetsRepliesModel? twitterProfileTweetsRepliesModelObj;

  @override
  List<Object?> get props => [
        twitterProfileTweetsRepliesModelObj,
      ];

  TwitterProfileTweetsRepliesState copyWith(
      {TwitterProfileTweetsRepliesModel? twitterProfileTweetsRepliesModelObj}) {
    return TwitterProfileTweetsRepliesState(
      twitterProfileTweetsRepliesModelObj:
          twitterProfileTweetsRepliesModelObj ??
              this.twitterProfileTweetsRepliesModelObj,
    );
  }
}
