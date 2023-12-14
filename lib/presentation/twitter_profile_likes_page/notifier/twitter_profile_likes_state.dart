// ignore_for_file: must_be_immutable

part of 'twitter_profile_likes_notifier.dart';

/// Represents the state of TwitterProfileLikes in the application.
class TwitterProfileLikesState extends Equatable {
  TwitterProfileLikesState({this.twitterProfileLikesModelObj});

  TwitterProfileLikesModel? twitterProfileLikesModelObj;

  @override
  List<Object?> get props => [
        twitterProfileLikesModelObj,
      ];

  TwitterProfileLikesState copyWith(
      {TwitterProfileLikesModel? twitterProfileLikesModelObj}) {
    return TwitterProfileLikesState(
      twitterProfileLikesModelObj:
          twitterProfileLikesModelObj ?? this.twitterProfileLikesModelObj,
    );
  }
}
