import 'notifier/twitter_retweet_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TwitterRetweetBottomsheet extends ConsumerStatefulWidget {
  const TwitterRetweetBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterRetweetBottomsheetState createState() =>
      TwitterRetweetBottomsheetState();
}

class TwitterRetweetBottomsheetState
    extends ConsumerState<TwitterRetweetBottomsheet> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5.v,
            width: 36.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 17.v,
                  width: 24.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_retweet".tr,
                    style: CustomTextStyles.bodyLargeGray9000119,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 18.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "msg_retweet_with_comment".tr,
                    style: CustomTextStyles.bodyLargeGray9000119,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_cancel".tr,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.bodyLargeBlack90019,
          ),
          SizedBox(height: 36.v),
        ],
      ),
    );
  }
}
