// ignore_for_file: must_be_immutable

part of 'twitter_search_notifier.dart';

/// Represents the state of TwitterSearch in the application.
class TwitterSearchState extends Equatable {
  TwitterSearchState({
    this.searchController,
    this.twitterSearchModelObj,
  });

  TextEditingController? searchController;

  TwitterSearchModel? twitterSearchModelObj;

  @override
  List<Object?> get props => [
        searchController,
        twitterSearchModelObj,
      ];

  TwitterSearchState copyWith({
    TextEditingController? searchController,
    TwitterSearchModel? twitterSearchModelObj,
  }) {
    return TwitterSearchState(
      searchController: searchController ?? this.searchController,
      twitterSearchModelObj:
          twitterSearchModelObj ?? this.twitterSearchModelObj,
    );
  }
}
