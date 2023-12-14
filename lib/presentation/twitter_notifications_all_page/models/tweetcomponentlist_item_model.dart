import '../../../core/app_export.dart';

/// This class is used in the [tweetcomponentlist_item_widget] screen.
class TweetcomponentlistItemModel {
  TweetcomponentlistItemModel({
    this.tweetImage,
    this.circleImage,
    this.id,
  }) {
    tweetImage = tweetImage ?? ImageConstant.imgStarSolidIcon;
    circleImage = circleImage ?? ImageConstant.imgRound4;
    id = id ?? "";
  }

  String? tweetImage;

  String? circleImage;

  String? id;
}
