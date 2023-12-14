// ignore_for_file: must_be_immutable

part of 'twitter_new_message_notifier.dart';

/// Represents the state of TwitterNewMessage in the application.
class TwitterNewMessageState extends Equatable {
  TwitterNewMessageState({this.twitterNewMessageModelObj});

  TwitterNewMessageModel? twitterNewMessageModelObj;

  @override
  List<Object?> get props => [
        twitterNewMessageModelObj,
      ];

  TwitterNewMessageState copyWith(
      {TwitterNewMessageModel? twitterNewMessageModelObj}) {
    return TwitterNewMessageState(
      twitterNewMessageModelObj:
          twitterNewMessageModelObj ?? this.twitterNewMessageModelObj,
    );
  }
}
