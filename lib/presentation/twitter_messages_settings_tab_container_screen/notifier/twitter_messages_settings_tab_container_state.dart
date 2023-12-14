// ignore_for_file: must_be_immutable

part of 'twitter_messages_settings_tab_container_notifier.dart';

/// Represents the state of TwitterMessagesSettingsTabContainer in the application.
class TwitterMessagesSettingsTabContainerState extends Equatable {
  TwitterMessagesSettingsTabContainerState({
    this.isSelectedSwitch = false,
    this.twitterMessagesSettingsTabContainerModelObj,
  });

  TwitterMessagesSettingsTabContainerModel?
      twitterMessagesSettingsTabContainerModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        twitterMessagesSettingsTabContainerModelObj,
      ];

  TwitterMessagesSettingsTabContainerState copyWith({
    bool? isSelectedSwitch,
    TwitterMessagesSettingsTabContainerModel?
        twitterMessagesSettingsTabContainerModelObj,
  }) {
    return TwitterMessagesSettingsTabContainerState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      twitterMessagesSettingsTabContainerModelObj:
          twitterMessagesSettingsTabContainerModelObj ??
              this.twitterMessagesSettingsTabContainerModelObj,
    );
  }
}
