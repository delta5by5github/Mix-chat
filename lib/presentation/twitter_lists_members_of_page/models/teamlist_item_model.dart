import '../../../core/app_export.dart';

/// This class is used in the [teamlist_item_widget] screen.
class TeamlistItemModel {
  TeamlistItemModel({
    this.joshuaLawrence,
    this.dTeams,
    this.systems,
    this.membersCounter,
    this.userImage,
    this.id,
  }) {
    joshuaLawrence = joshuaLawrence ?? "Joshua Lawrence";
    dTeams = dTeams ?? "D-teams";
    systems = systems ?? "systems";
    membersCounter = membersCounter ?? "277 members";
    userImage = userImage ?? ImageConstant.imgRound27;
    id = id ?? "";
  }

  String? joshuaLawrence;

  String? dTeams;

  String? systems;

  String? membersCounter;

  String? userImage;

  String? id;
}
