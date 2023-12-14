// ignore_for_file: must_be_immutable

part of 'twitter_messages_notifier.dart';

/// Represents the state of TwitterMessages in the application.
class TwitterMessagesState extends Equatable {
  TwitterMessagesState({
    this.searchController,
    this.twitterMessagesModelObj,
  });

  TextEditingController? searchController;

  TwitterMessagesModel? twitterMessagesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        twitterMessagesModelObj,
      ];

  TwitterMessagesState copyWith({
    TextEditingController? searchController,
    TwitterMessagesModel? twitterMessagesModelObj,
  }) {
    return TwitterMessagesState(
      searchController: searchController ?? this.searchController,
      twitterMessagesModelObj:
          twitterMessagesModelObj ?? this.twitterMessagesModelObj,
    );
  }
}
