// ignore_for_file: must_be_immutable

part of 'twitter_tweet_of_mine_notifier.dart';

/// Represents the state of TwitterTweetOfMine in the application.
class TwitterTweetOfMineState extends Equatable {
  TwitterTweetOfMineState({
    this.timestampController,
    this.addTweetController,
    this.twitterTweetOfMineModelObj,
  });

  TextEditingController? timestampController;

  TextEditingController? addTweetController;

  TwitterTweetOfMineModel? twitterTweetOfMineModelObj;

  @override
  List<Object?> get props => [
        timestampController,
        addTweetController,
        twitterTweetOfMineModelObj,
      ];

  TwitterTweetOfMineState copyWith({
    TextEditingController? timestampController,
    TextEditingController? addTweetController,
    TwitterTweetOfMineModel? twitterTweetOfMineModelObj,
  }) {
    return TwitterTweetOfMineState(
      timestampController: timestampController ?? this.timestampController,
      addTweetController: addTweetController ?? this.addTweetController,
      twitterTweetOfMineModelObj:
          twitterTweetOfMineModelObj ?? this.twitterTweetOfMineModelObj,
    );
  }
}
