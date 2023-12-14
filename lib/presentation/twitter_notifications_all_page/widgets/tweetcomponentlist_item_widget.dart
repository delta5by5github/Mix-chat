import '../models/tweetcomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore: must_be_immutable
class TweetcomponentlistItemWidget extends StatelessWidget {
  TweetcomponentlistItemWidget(
    this.tweetcomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TweetcomponentlistItemModel tweetcomponentlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 31.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: tweetcomponentlistItemModelObj?.tweetImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  margin: EdgeInsets.only(bottom: 13.v),
                ),
                CustomImageView(
                  imagePath: tweetcomponentlistItemModelObj?.circleImage,
                  height: 37.adaptSize,
                  width: 37.adaptSize,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownBlueGray200,
                  height: 4.v,
                  width: 9.h,
                  margin: EdgeInsets.only(bottom: 32.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_in_case_you_missed2".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                TextSpan(
                  text: "lbl_saad_drusteer".tr,
                  style: theme.textTheme.titleMedium,
                ),
                TextSpan(
                  text: "lbl_s_tweet".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          Container(
            width: 309.h,
            margin: EdgeInsets.only(left: 63.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl2".tr,
                    style:
                        CustomTextStyles.titleLargeOnSecondaryContainerRegular,
                  ),
                  TextSpan(
                    text: "msg_are_you_using2".tr,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.28,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_gdrustee".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: "msg_r_com_2020_01_migrat".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
