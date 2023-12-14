// ignore_for_file: must_be_immutable

part of 'twitter_profile_media_notifier.dart';

/// Represents the state of TwitterProfileMedia in the application.
class TwitterProfileMediaState extends Equatable {
  TwitterProfileMediaState({this.twitterProfileMediaModelObj});

  TwitterProfileMediaModel? twitterProfileMediaModelObj;

  @override
  List<Object?> get props => [
        twitterProfileMediaModelObj,
      ];

  TwitterProfileMediaState copyWith(
      {TwitterProfileMediaModel? twitterProfileMediaModelObj}) {
    return TwitterProfileMediaState(
      twitterProfileMediaModelObj:
          twitterProfileMediaModelObj ?? this.twitterProfileMediaModelObj,
    );
  }
}
