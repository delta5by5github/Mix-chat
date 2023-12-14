import 'notifier/twitter_settings_and_privacy_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';

class TwitterSettingsAndPrivacyScreen extends ConsumerStatefulWidget {
  const TwitterSettingsAndPrivacyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterSettingsAndPrivacyScreenState createState() =>
      TwitterSettingsAndPrivacyScreenState();
}

class TwitterSettingsAndPrivacyScreenState
    extends ConsumerState<TwitterSettingsAndPrivacyScreen> {
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
              _buildAccountColumn(context),
              SizedBox(height: 1.v),
              _buildGeneralSettingsColumn(context),
              SizedBox(height: 5.v),
              _buildGeneralColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_settings_and_privacy".tr,
      ),
      actions: [
        AppbarSubtitle(
          text: "lbl_done".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 11.v,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildAccountColumn(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.background,
          child: Text(
            "lbl_pixsellz".tr,
            style: CustomTextStyles.titleMediumOnSecondaryContainerExtraBold,
          ),
        ),
        Container(
          decoration: AppDecoration.outlineBluegray1002,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildContentPreferencesColumn(
                context,
                contentText: "lbl_account".tr,
              ),
              _buildNotificationsRow(
                context,
                notificationText: "msg_privacy_and_safety".tr,
              ),
              _buildNotificationsRow(
                context,
                notificationText: "lbl_notifications".tr,
              ),
              _buildContentPreferencesColumn(
                context,
                contentText: "msg_content_preferences".tr,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGeneralSettingsColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          Text(
            "lbl_general".tr,
            style: CustomTextStyles.titleMediumOnSecondaryContainerExtraBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralColumn(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray1002,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildContentPreferencesColumn(
            context,
            contentText: "msg_display_and_sound".tr,
          ),
          _buildNotificationsRow(
            context,
            notificationText: "lbl_data_usage".tr,
          ),
          _buildNotificationsRow(
            context,
            notificationText: "lbl_accessibility".tr,
          ),
          _buildNotificationsRow(
            context,
            notificationText: "lbl_about_twitter".tr,
          ),
          Divider(
            indent: 20.h,
          ),
          SizedBox(height: 11.v),
          Container(
            width: 374.h,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "msg_general_settings".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNotificationsRow(
    BuildContext context, {
    required String notificationText,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              notificationText,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.gray90001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnsecondarycontainer,
            height: 13.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 5.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContentPreferencesColumn(
    BuildContext context, {
    required String contentText,
  }) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          Divider(
            indent: 20.h,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 25.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  contentText,
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: appTheme.gray90001,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnsecondarycontainer,
                  height: 13.v,
                  width: 7.h,
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
