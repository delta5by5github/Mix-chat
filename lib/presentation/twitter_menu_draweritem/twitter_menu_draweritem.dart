import 'notifier/twitter_menu_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwitterMenuDraweritem extends ConsumerStatefulWidget {
  const TwitterMenuDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterMenuDraweritemState createState() => TwitterMenuDraweritemState();
}

class TwitterMenuDraweritemState extends ConsumerState<TwitterMenuDraweritem> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 320.h,
        padding: EdgeInsets.symmetric(vertical: 46.v),
        decoration: AppDecoration.outlineBluegray200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 9.v),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 15.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPrimaryAccount,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        radius: BorderRadius.circular(
                          27.h,
                        ),
                        margin: EdgeInsets.only(top: 4.v),
                      ),
                      Spacer(),
                      Container(
                        height: 36.v,
                        width: 40.h,
                        margin: EdgeInsets.only(bottom: 23.v),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSecondaryAcconut,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 16.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer
                                    .copyWith(
                                  borderRadius: BorderRadiusStyle.circleBorder8,
                                ),
                                child: Text(
                                  "lbl_1".tr,
                                  style: CustomTextStyles
                                      .bodySmallOnPrimaryContainer,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSecondaryAccount,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 23.v,
                        ),
                      ),
                      Container(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 4.v,
                          bottom: 23.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blue400,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_pixsellz2".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_pixsellz".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_216".tr,
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_following".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                          TextSpan(
                            text: "   ".tr,
                          ),
                          TextSpan(
                            text: "lbl_117".tr,
                            style: CustomTextStyles.titleMediumMedium,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_followers".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLockOnsecondarycontainer,
                        height: 20.v,
                        width: 16.h,
                        margin: EdgeInsets.only(top: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "lbl_profile".tr,
                          style: CustomTextStyles.bodyLargeGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMegaphone,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(top: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "lbl_lists".tr,
                          style: CustomTextStyles.bodyLargeGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgSettingsOnsecondarycontainer,
                        height: 22.v,
                        width: 17.h,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "lbl_topics".tr,
                          style: CustomTextStyles.bodyLargeGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBookmark,
                        height: 20.v,
                        width: 18.h,
                        margin: EdgeInsets.only(top: 4.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 22.h,
                          top: 1.v,
                        ),
                        child: Text(
                          "lbl_bookmarks".tr,
                          style: CustomTextStyles.bodyLargeGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 27.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMomentsIcon,
                        height: 21.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          top: 1.v,
                        ),
                        child: Text(
                          "lbl_moments".tr,
                          style: CustomTextStyles.bodyLargeGray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                Divider(
                  color: appTheme.blueGray200,
                ),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "msg_settings_and_privacy".tr,
                      style: CustomTextStyles.bodyLargeGray90001,
                    ),
                  ),
                ),
                SizedBox(height: 33.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_help_center".tr,
                      style: CustomTextStyles.bodyLargeGray90001,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlue400,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGrid,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
