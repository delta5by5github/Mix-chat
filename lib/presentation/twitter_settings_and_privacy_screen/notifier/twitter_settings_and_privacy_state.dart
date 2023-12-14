// ignore_for_file: must_be_immutable

part of 'twitter_settings_and_privacy_notifier.dart';

/// Represents the state of TwitterSettingsAndPrivacy in the application.
class TwitterSettingsAndPrivacyState extends Equatable {
  TwitterSettingsAndPrivacyState({this.twitterSettingsAndPrivacyModelObj});

  TwitterSettingsAndPrivacyModel? twitterSettingsAndPrivacyModelObj;

  @override
  List<Object?> get props => [
        twitterSettingsAndPrivacyModelObj,
      ];

  TwitterSettingsAndPrivacyState copyWith(
      {TwitterSettingsAndPrivacyModel? twitterSettingsAndPrivacyModelObj}) {
    return TwitterSettingsAndPrivacyState(
      twitterSettingsAndPrivacyModelObj: twitterSettingsAndPrivacyModelObj ??
          this.twitterSettingsAndPrivacyModelObj,
    );
  }
}
