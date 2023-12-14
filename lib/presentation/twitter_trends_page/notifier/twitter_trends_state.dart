// ignore_for_file: must_be_immutable

part of 'twitter_trends_notifier.dart';

/// Represents the state of TwitterTrends in the application.
class TwitterTrendsState extends Equatable {
  TwitterTrendsState({
    this.searchController,
    this.twitterTrendsModelObj,
  });

  TextEditingController? searchController;

  TwitterTrendsModel? twitterTrendsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        twitterTrendsModelObj,
      ];

  TwitterTrendsState copyWith({
    TextEditingController? searchController,
    TwitterTrendsModel? twitterTrendsModelObj,
  }) {
    return TwitterTrendsState(
      searchController: searchController ?? this.searchController,
      twitterTrendsModelObj:
          twitterTrendsModelObj ?? this.twitterTrendsModelObj,
    );
  }
}
