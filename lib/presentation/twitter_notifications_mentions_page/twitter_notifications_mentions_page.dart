import 'notifier/twitter_notifications_mentions_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwitterNotificationsMentionsPage extends ConsumerStatefulWidget {
  const TwitterNotificationsMentionsPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterNotificationsMentionsPageState createState() =>
      TwitterNotificationsMentionsPageState();
}

class TwitterNotificationsMentionsPageState
    extends ConsumerState<TwitterNotificationsMentionsPage>
    with AutomaticKeepAliveClientMixin<TwitterNotificationsMentionsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBlueGray,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildTweetActions(context),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 64.h,
                        right: 50.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 14.v,
                            width: 15.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_7".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(
                            flex: 32,
                          ),
                          SizedBox(
                            width: 25.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRetweetSolidStroke,
                                  height: 13.v,
                                  width: 18.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "lbl_1".tr,
                                    style: CustomTextStyles.bodySmallGreen400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 34,
                          ),
                          SizedBox(
                            width: 26.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgFavoritePink600,
                                  height: 14.v,
                                  width: 15.h,
                                ),
                                Text(
                                  "lbl_32".tr,
                                  style: CustomTextStyles.bodySmallPink600,
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 32,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTwitter,
                            height: 14.v,
                            width: 15.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildTweet(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTweetActions(BuildContext context) {
    return Column(
      children: [
        _buildTweetAuthor(
          context,
          text: "msg_mariane_marianeee".tr,
          text1: "msg_hey_theflaticon".tr,
        ),
        SizedBox(height: 6.v),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(left: 63.h),
            decoration: AppDecoration.outlineBluegray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 162.v,
                  width: 311.h,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 254.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    right: 45.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_top_icons_packs2".tr,
                          style: CustomTextStyles.bodyLargeGray90001_2,
                        ),
                        TextSpan(
                          text: "lbl_flatlogic_com".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTweet(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.outlineBlueGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.v),
          _buildTweetAuthor(
            context,
            text: "msg_crownlist_llc_crownlistllc".tr,
            text1: "msg_fragments_android".tr,
          ),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle,
            height: 188.v,
            width: 311.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTweetAuthor(
    BuildContext context, {
    required String text,
    required String text1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRound8,
          height: 55.adaptSize,
          width: 55.adaptSize,
          radius: BorderRadius.circular(
            27.h,
          ),
          margin: EdgeInsets.only(
            top: 1.v,
            bottom: 27.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_crownlist_llc".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_crownlistllc2".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        TextSpan(
                          text: "lbl_1_9_20".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray200,
                    height: 4.v,
                    width: 9.h,
                    margin: EdgeInsets.only(
                      left: 37.h,
                      top: 6.v,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 311.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_fragments_android2".tr,
                        style: CustomTextStyles.bodyLargeGray90001_2,
                      ),
                      TextSpan(
                        text: "msg_crownlistllc_com".tr,
                        style: CustomTextStyles.bodyLargeBlue400,
                      ),
                      TextSpan(
                        text: "lbl_newsletter_via".tr,
                        style: CustomTextStyles.bodyLargeGray90001_2,
                      ),
                      TextSpan(
                        text: "lbl_pixsellz".tr,
                        style: CustomTextStyles.bodyLargeBlue400,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
