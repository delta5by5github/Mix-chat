// ignore_for_file: must_be_immutable

part of 'twitter_retweeted_tweet_notifier.dart';

/// Represents the state of TwitterRetweetedTweet in the application.
class TwitterRetweetedTweetState extends Equatable {
  TwitterRetweetedTweetState({
    this.tweetyourreplyController,
    this.twitterRetweetedTweetModelObj,
  });

  TextEditingController? tweetyourreplyController;

  TwitterRetweetedTweetModel? twitterRetweetedTweetModelObj;

  @override
  List<Object?> get props => [
        tweetyourreplyController,
        twitterRetweetedTweetModelObj,
      ];

  TwitterRetweetedTweetState copyWith({
    TextEditingController? tweetyourreplyController,
    TwitterRetweetedTweetModel? twitterRetweetedTweetModelObj,
  }) {
    return TwitterRetweetedTweetState(
      tweetyourreplyController:
          tweetyourreplyController ?? this.tweetyourreplyController,
      twitterRetweetedTweetModelObj:
          twitterRetweetedTweetModelObj ?? this.twitterRetweetedTweetModelObj,
    );
  }
}
