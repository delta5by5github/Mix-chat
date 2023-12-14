import '../../../core/app_export.dart';

/// This class is used in the [twittermessages_item_widget] screen.
class TwittermessagesItemModel {
  TwittermessagesItemModel({
    this.circleImage,
    this.text1,
    this.text3,
    this.id,
  }) {
    circleImage = circleImage ?? ImageConstant.imgRound9;
    text1 = text1 ?? "12/2/19";
    text3 = text3 ?? "You: You’re very welcome AzizDjan!";
    id = id ?? "";
  }

  String? circleImage;

  String? text1;

  String? text3;

  String? id;
}
