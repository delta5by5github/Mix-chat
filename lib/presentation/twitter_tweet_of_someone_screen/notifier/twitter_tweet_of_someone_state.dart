// ignore_for_file: must_be_immutable

part of 'twitter_tweet_of_someone_notifier.dart';

/// Represents the state of TwitterTweetOfSomeone in the application.
class TwitterTweetOfSomeoneState extends Equatable {
  TwitterTweetOfSomeoneState({
    this.timestampController,
    this.replyPromptController,
    this.twitterTweetOfSomeoneModelObj,
  });

  TextEditingController? timestampController;

  TextEditingController? replyPromptController;

  TwitterTweetOfSomeoneModel? twitterTweetOfSomeoneModelObj;

  @override
  List<Object?> get props => [
        timestampController,
        replyPromptController,
        twitterTweetOfSomeoneModelObj,
      ];

  TwitterTweetOfSomeoneState copyWith({
    TextEditingController? timestampController,
    TextEditingController? replyPromptController,
    TwitterTweetOfSomeoneModel? twitterTweetOfSomeoneModelObj,
  }) {
    return TwitterTweetOfSomeoneState(
      timestampController: timestampController ?? this.timestampController,
      replyPromptController:
          replyPromptController ?? this.replyPromptController,
      twitterTweetOfSomeoneModelObj:
          twitterTweetOfSomeoneModelObj ?? this.twitterTweetOfSomeoneModelObj,
    );
  }
}
