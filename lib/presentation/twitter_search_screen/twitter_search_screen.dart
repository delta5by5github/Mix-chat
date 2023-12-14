import 'notifier/twitter_search_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:mix_chat/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_icon_button.dart';

class TwitterSearchScreen extends ConsumerStatefulWidget {
  const TwitterSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterSearchScreenState createState() => TwitterSearchScreenState();
}

class TwitterSearchScreenState extends ConsumerState<TwitterSearchScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSettingsHeader(context),
              SizedBox(height: 5.v),
              _buildFoundProfiles(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Consumer(
        builder: (context, ref, _) {
          return AppbarTitleSearchviewOne(
            margin: EdgeInsets.only(left: 20.h),
            hintText: "lbl_search_twitter".tr,
            controller: ref.watch(twitterSearchNotifier).searchController,
          );
        },
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_cancel".tr,
          margin: EdgeInsets.fromLTRB(16.h, 11.v, 20.h, 11.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildSettingsHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "lbl_recent_searches".tr,
              style: CustomTextStyles.titleMediumOnSecondaryContainerExtraBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              right: 1.h,
              bottom: 1.v,
            ),
            child: CustomIconButton(
              height: 19.adaptSize,
              width: 19.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.fillErrorContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFoundProfiles(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.outlineBluegray1003,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 21.h),
              child: IntrinsicWidth(
                child: SizedBox(
                  height: 99.v,
                  width: 393.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRound56x56,
                                  height: 56.adaptSize,
                                  width: 56.adaptSize,
                                  radius: BorderRadius.circular(
                                    28.h,
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "lbl_sab_khasa".tr,
                                  style: CustomTextStyles.bodyMediumGray90001,
                                ),
                                Text(
                                  "lbl_s_khasan".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 16.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRound23,
                                    height: 56.adaptSize,
                                    width: 56.adaptSize,
                                    radius: BorderRadius.circular(
                                      28.h,
                                    ),
                                    margin: EdgeInsets.only(left: 12.h),
                                  ),
                                  SizedBox(height: 8.v),
                                  Text(
                                    "lbl_figma_plugins".tr,
                                    style: CustomTextStyles.bodyMediumGray90001,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 89.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRound24,
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                radius: BorderRadius.circular(
                                  28.h,
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Text(
                                "lbl_martha_cr".tr,
                                style: CustomTextStyles.bodyMediumGray90001,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "lbl_craig_love2".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 135.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRound25,
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                radius: BorderRadius.circular(
                                  28.h,
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_tibitha_p".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray90001,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCheckmarkBlue400,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize,
                                          margin: EdgeInsets.only(left: 1.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_mis_potter2".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 45.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRound26,
                                height: 56.adaptSize,
                                width: 56.adaptSize,
                                radius: BorderRadius.circular(
                                  28.h,
                                ),
                                margin: EdgeInsets.only(left: 14.h),
                              ),
                              SizedBox(height: 9.v),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Row(
                                      children: [
                                        Text(
                                          "lbl_figma".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray90001,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCheckmarkBlue400,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize,
                                          margin: EdgeInsets.only(
                                            left: 1.h,
                                            bottom: 2.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "lbl_figmadesi".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "lbl_figmaplugins2".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Divider(),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 24.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_skhasanov".tr,
                  style: CustomTextStyles.bodyLargeGray90001_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgContrastBlue400,
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
