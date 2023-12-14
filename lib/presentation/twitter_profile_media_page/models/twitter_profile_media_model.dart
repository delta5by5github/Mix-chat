// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [twitter_profile_media_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwitterProfileMediaModel extends Equatable {
  TwitterProfileMediaModel() {}

  TwitterProfileMediaModel copyWith() {
    return TwitterProfileMediaModel();
  }

  @override
  List<Object?> get props => [];
}
