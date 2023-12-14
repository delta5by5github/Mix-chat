// ignore_for_file: must_be_immutable

part of 'twitter_retweet_notifier.dart';

/// Represents the state of TwitterRetweet in the application.
class TwitterRetweetState extends Equatable {
  TwitterRetweetState({this.twitterRetweetModelObj});

  TwitterRetweetModel? twitterRetweetModelObj;

  @override
  List<Object?> get props => [
        twitterRetweetModelObj,
      ];

  TwitterRetweetState copyWith({TwitterRetweetModel? twitterRetweetModelObj}) {
    return TwitterRetweetState(
      twitterRetweetModelObj:
          twitterRetweetModelObj ?? this.twitterRetweetModelObj,
    );
  }
}
