import '../../../core/app_export.dart';

/// This class is used in the [searchfield_item_widget] screen.
class SearchfieldItemModel {
  SearchfieldItemModel({
    this.searchImage,
    this.searchText,
    this.id,
  }) {
    searchImage = searchImage ?? ImageConstant.imgSearchOnsecondarycontainer;
    searchText = searchText ?? "Search for people and groups";
    id = id ?? "";
  }

  String? searchImage;

  String? searchText;

  String? id;
}
