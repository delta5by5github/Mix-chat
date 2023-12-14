import 'notifier/twitter_tweet_of_someone_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_home_page/twitter_home_page.dart';
import 'package:mix_chat/presentation/twitter_messages_page/twitter_messages_page.dart';
import 'package:mix_chat/presentation/twitter_notifications_mentions_tab_container_page/twitter_notifications_mentions_tab_container_page.dart';
import 'package:mix_chat/presentation/twitter_trends_page/twitter_trends_page.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_image.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_bottom_bar.dart';
import 'package:mix_chat/widgets/custom_icon_button.dart';
import 'package:mix_chat/widgets/custom_text_form_field.dart';

class TwitterTweetOfSomeoneScreen extends ConsumerStatefulWidget {
  const TwitterTweetOfSomeoneScreen({Key? key}) : super(key: key);

  @override
  TwitterTweetOfSomeoneScreenState createState() =>
      TwitterTweetOfSomeoneScreenState();
}

// ignore_for_file: must_be_immutable
class TwitterTweetOfSomeoneScreenState
    extends ConsumerState<TwitterTweetOfSomeoneScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTweet(context),
                  _buildTweet1(context),
                  SizedBox(height: 8.v),
                  _buildSearchBar(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 18.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_tweet".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTweet(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v),
        decoration: AppDecoration.outlineBluegray1002,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 47.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRetweetStrokeIcon,
                        height: 11.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("msg_the_ux_person_retweeted".tr,
                            style: theme.textTheme.bodyMedium))
                  ]))),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRound55x55,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        radius: BorderRadius.circular(27.h)),
                    Container(
                        width: 82.h,
                        margin:
                            EdgeInsets.only(left: 8.h, top: 6.v, bottom: 8.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_karennne4".tr,
                                  style: theme.textTheme.titleMedium),
                              TextSpan(
                                  text: "lbl_karennne3".tr,
                                  style: theme.textTheme.bodyLarge)
                            ]),
                            textAlign: TextAlign.left)),
                    Spacer(),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowDownBlueGray200,
                        height: 4.v,
                        width: 9.h,
                        margin: EdgeInsets.only(top: 16.v, bottom: 34.v))
                  ])),
          SizedBox(height: 24.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 331.h,
                  margin: EdgeInsets.only(left: 6.h, right: 48.h),
                  child: Text("msg_hiring_for_a".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.titleLarge!.copyWith(height: 1.41)))),
          SizedBox(height: 36.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller: ref
                    .watch(twitterTweetOfSomeoneNotifier)
                    .timestampController,
                hintText: "msg_09_28_2_21_20".tr,
                contentPadding: EdgeInsets.symmetric(horizontal: 6.h),
                borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
                filled: false);
          }),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_6".tr,
                              style: theme.textTheme.titleMedium),
                          TextSpan(
                              text: "lbl_retweets".tr,
                              style: theme.textTheme.bodyLarge)
                        ]),
                        textAlign: TextAlign.left),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_15".tr,
                                  style: theme.textTheme.titleMedium),
                              TextSpan(
                                  text: "lbl_likes".tr,
                                  style: theme.textTheme.bodyLarge)
                            ]),
                            textAlign: TextAlign.left))
                  ]))),
          SizedBox(height: 11.v),
          Divider(color: appTheme.blueGray200),
          SizedBox(height: 12.v),
          CustomImageView(
              imagePath: ImageConstant.imgActionButtons,
              height: 18.v,
              width: 297.h)
        ]));
  }

  /// Section Widget
  Widget _buildTweet1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 9.v),
        decoration: AppDecoration.outlineBluegray1002,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRound29,
                          height: 55.adaptSize,
                          width: 55.adaptSize,
                          radius: BorderRadius.circular(27.h)),
                      SizedBox(height: 5.v),
                      SizedBox(
                          height: 90.v,
                          child: VerticalDivider(
                              width: 2.h,
                              thickness: 2.v,
                              color: appTheme.blueGray100)),
                      SizedBox(height: 5.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRound30,
                          height: 55.adaptSize,
                          width: 55.adaptSize,
                          radius: BorderRadius.circular(27.h)),
                      SizedBox(height: 5.v),
                      SizedBox(
                          height: 56.v,
                          child: VerticalDivider(
                              width: 2.h,
                              thickness: 2.v,
                              color: appTheme.blueGray100))
                    ])),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 12.v),
                        child: Column(children: [
                          _buildKarennneKarennne(context,
                              dynamicText: "msg_kiero_d_kiero_d".tr),
                          SizedBox(height: 3.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_replying_to".tr,
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "lbl_karennne3".tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlue400)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 4.v),
                          Container(
                              width: 307.h,
                              margin: EdgeInsets.only(right: 4.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_interesting_nicola2".tr,
                                        style: CustomTextStyles
                                            .bodyLargeGray90001_2),
                                    TextSpan(
                                        text: "msg_ux_talent_shout".tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlue400)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 259.h,
                                  margin: EdgeInsets.only(right: 50.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgContrast,
                                        height: 14.v,
                                        width: 15.h),
                                    Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text("lbl_1".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Spacer(flex: 31),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgThumbsUp,
                                        height: 12.v,
                                        width: 17.h),
                                    Spacer(flex: 36),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgFavoriteOnsecondarycontainer,
                                        height: 14.v,
                                        width: 15.h),
                                    Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text("lbl_1".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Spacer(flex: 32),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgTwitter,
                                        height: 14.v,
                                        width: 15.h)
                                  ]))),
                          SizedBox(height: 21.v),
                          _buildKarennneKarennne(context,
                              dynamicText: "msg_karennne_karennne4".tr),
                          Container(
                              width: 308.h,
                              margin: EdgeInsets.only(right: 3.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_maybe_i_forgot_the2".tr,
                                        style: CustomTextStyles
                                            .bodyLargeGray90001_2),
                                    TextSpan(
                                        text: "msg_hiringux_designjobs".tr,
                                        style:
                                            CustomTextStyles.bodyLargeBlue400)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 6.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 259.h,
                                  margin: EdgeInsets.only(right: 49.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgContrast,
                                        height: 14.v,
                                        width: 15.h),
                                    Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text("lbl_1".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Spacer(flex: 29),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgThumbsUp,
                                        height: 12.v,
                                        width: 17.h),
                                    Spacer(flex: 34),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgFavoriteOnsecondarycontainer,
                                        height: 14.v,
                                        width: 15.h),
                                    Spacer(flex: 35),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgTwitter,
                                        height: 14.v,
                                        width: 15.h)
                                  ])))
                        ])))
              ]),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 11.v,
                            width: 3.h,
                            margin: EdgeInsets.only(top: 2.v, bottom: 6.v),
                            decoration: BoxDecoration(
                                color: appTheme.gray400,
                                borderRadius: BorderRadius.circular(5.h))),
                        Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Text("lbl_1_more_reply".tr,
                                style: CustomTextStyles.bodyLargeBlue400_1))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
        decoration: AppDecoration.outlineBluegray2002,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              child: CustomImageView(imagePath: ImageConstant.imgEllipse7)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Consumer(builder: (context, ref, _) {
                    return CustomTextFormField(
                        controller: ref
                            .watch(twitterTweetOfSomeoneNotifier)
                            .replyPromptController,
                        hintText: "msg_tweet_your_reply".tr,
                        textInputAction: TextInputAction.done);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildKarennneKarennne(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_karennne5".tr,
                    style: theme.textTheme.titleMedium),
                TextSpan(
                    text: "lbl_karennne_2d".tr,
                    style: theme.textTheme.bodyLarge)
              ]),
              textAlign: TextAlign.left),
          CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 5.v,
              width: 10.h,
              margin: EdgeInsets.only(top: 6.v, bottom: 8.v))
        ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Thumbsupblue400:
        return AppRoutes.twitterHomePage;
      case BottomBarEnum.Searchonsecondarycontainer:
        return AppRoutes.twitterTrendsPage;
      case BottomBarEnum.Bellstrokeicon:
        return AppRoutes.twitterNotificationsMentionsTabContainerPage;
      case BottomBarEnum.Lock:
        return AppRoutes.twitterMessagesPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.twitterHomePage:
        return TwitterHomePage();
      case AppRoutes.twitterTrendsPage:
        return TwitterTrendsPage();
      case AppRoutes.twitterNotificationsMentionsTabContainerPage:
        return TwitterNotificationsMentionsTabContainerPage();
      case AppRoutes.twitterMessagesPage:
        return TwitterMessagesPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
