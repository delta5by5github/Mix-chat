// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [twitter_trends_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterTrendsModel extends Equatable {
  TwitterTrendsModel() {}

  TwitterTrendsModel copyWith() {
    return TwitterTrendsModel();
  }

  @override
  List<Object?> get props => [];
}
