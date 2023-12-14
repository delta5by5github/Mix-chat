import '../models/teamlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore: must_be_immutable
class TeamlistItemWidget extends StatelessWidget {
  TeamlistItemWidget(
    this.teamlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TeamlistItemModel teamlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray1002,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teamlistItemModelObj.joshuaLawrence!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  teamlistItemModelObj.dTeams!,
                  style: CustomTextStyles.bodyLargeGray9000119,
                ),
                SizedBox(height: 2.v),
                Text(
                  teamlistItemModelObj.systems!,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 1.v),
                Text(
                  teamlistItemModelObj.membersCounter!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: teamlistItemModelObj?.userImage,
            height: 55.adaptSize,
            width: 55.adaptSize,
            radius: BorderRadius.circular(
              27.h,
            ),
            margin: EdgeInsets.only(bottom: 30.v),
          ),
        ],
      ),
    );
  }
}
