import '../../../core/app_export.dart';

/// This class is used in the [twittertweeting_item_widget] screen.
class TwittertweetingItemModel {
  TwittertweetingItemModel({
    this.camera,
    this.media,
    this.media1,
    this.media2,
    this.media3,
    this.id,
  }) {
    camera = camera ?? ImageConstant.imgCamera;
    media = media ?? ImageConstant.imgMedia;
    media1 = media1 ?? ImageConstant.imgMedia78x78;
    media2 = media2 ?? ImageConstant.imgMedia1;
    media3 = media3 ?? ImageConstant.imgMedia78x62;
    id = id ?? "";
  }

  String? camera;

  String? media;

  String? media1;

  String? media2;

  String? media3;

  String? id;
}
