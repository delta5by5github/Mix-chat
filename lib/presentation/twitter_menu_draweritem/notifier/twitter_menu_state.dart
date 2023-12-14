// ignore_for_file: must_be_immutable

part of 'twitter_menu_notifier.dart';

/// Represents the state of TwitterMenu in the application.
class TwitterMenuState extends Equatable {
  TwitterMenuState({this.twitterMenuModelObj});

  TwitterMenuModel? twitterMenuModelObj;

  @override
  List<Object?> get props => [
        twitterMenuModelObj,
      ];

  TwitterMenuState copyWith({TwitterMenuModel? twitterMenuModelObj}) {
    return TwitterMenuState(
      twitterMenuModelObj: twitterMenuModelObj ?? this.twitterMenuModelObj,
    );
  }
}
