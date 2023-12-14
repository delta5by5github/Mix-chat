// ignore_for_file: must_be_immutable

part of 'twitter_messages_settings_notifier.dart';

/// Represents the state of TwitterMessagesSettings in the application.
class TwitterMessagesSettingsState extends Equatable {
  TwitterMessagesSettingsState({
    this.isSelectedSwitch = false,
    this.twitterMessagesSettingsModelObj,
  });

  TwitterMessagesSettingsModel? twitterMessagesSettingsModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        twitterMessagesSettingsModelObj,
      ];

  TwitterMessagesSettingsState copyWith({
    bool? isSelectedSwitch,
    TwitterMessagesSettingsModel? twitterMessagesSettingsModelObj,
  }) {
    return TwitterMessagesSettingsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      twitterMessagesSettingsModelObj: twitterMessagesSettingsModelObj ??
          this.twitterMessagesSettingsModelObj,
    );
  }
}
