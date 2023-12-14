// ignore_for_file: must_be_immutable

part of 'twitter_home_notifier.dart';

/// Represents the state of TwitterHome in the application.
class TwitterHomeState extends Equatable {
  TwitterHomeState({this.twitterHomeModelObj});

  TwitterHomeModel? twitterHomeModelObj;

  @override
  List<Object?> get props => [
        twitterHomeModelObj,
      ];

  TwitterHomeState copyWith({TwitterHomeModel? twitterHomeModelObj}) {
    return TwitterHomeState(
      twitterHomeModelObj: twitterHomeModelObj ?? this.twitterHomeModelObj,
    );
  }
}
