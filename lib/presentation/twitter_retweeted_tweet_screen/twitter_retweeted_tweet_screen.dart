import 'notifier/twitter_retweeted_tweet_notifier.dart';
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

class TwitterRetweetedTweetScreen extends ConsumerStatefulWidget {
  const TwitterRetweetedTweetScreen({Key? key}) : super(key: key);

  @override
  TwitterRetweetedTweetScreenState createState() =>
      TwitterRetweetedTweetScreenState();
}

// ignore_for_file: must_be_immutable
class TwitterRetweetedTweetScreenState
    extends ConsumerState<TwitterRetweetedTweetScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 725.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 852.v,
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: theme.colorScheme.primary))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 19.h, vertical: 12.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 41.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRetweetStrokeIcon,
                                          height: 11.v,
                                          width: 14.h,
                                          margin: EdgeInsets.only(
                                              top: 3.v, bottom: 2.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Text("lbl_you_retweeted".tr,
                                              style:
                                                  theme.textTheme.bodyMedium))
                                    ])),
                                SizedBox(height: 11.v),
                                _buildTweetRow(context),
                                SizedBox(height: 25.v),
                                Container(
                                    width: 317.h,
                                    margin: EdgeInsets.only(right: 57.h),
                                    child: Text("msg_quickly_create_a".tr,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(height: 1.45))),
                                SizedBox(height: 4.v),
                                SizedBox(
                                    width: 210.h,
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_get_it_now_on2".tr,
                                              style:
                                                  theme.textTheme.titleLarge),
                                          TextSpan(
                                              text:
                                                  "msg_constructor_pixsellz_io"
                                                      .tr,
                                              style: CustomTextStyles
                                                  .titleLargeBlue400
                                                  .copyWith(height: 1.45))
                                        ]),
                                        textAlign: TextAlign.left)),
                                SizedBox(height: 23.v),
                                _buildOverflowMenu(context),
                                SizedBox(height: 7.v)
                              ]))),
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
  Widget _buildTweetRow(BuildContext context) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgRound11,
          height: 55.adaptSize,
          width: 55.adaptSize,
          radius: BorderRadius.circular(27.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 7.v, bottom: 7.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_komol_kuchkarov".tr, style: theme.textTheme.titleMedium),
            Text("lbl_kkuchkarov".tr, style: theme.textTheme.bodyLarge)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDownBlueGray200,
          height: 4.v,
          width: 9.h,
          margin: EdgeInsets.only(top: 17.v, bottom: 33.v))
    ]);
  }

  /// Section Widget
  Widget _buildOverflowMenu(BuildContext context) {
    return SizedBox(
        height: 374.adaptSize,
        width: 374.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle374x374,
              height: 374.adaptSize,
              width: 374.adaptSize,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.center),
          CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(7.h),
              alignment: Alignment.center,
              child: CustomImageView(imagePath: ImageConstant.imgOverflowMenu))
        ]));
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 673.v),
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
                                .watch(twitterRetweetedTweetNotifier)
                                .tweetyourreplyController,
                            hintText: "msg_tweet_your_reply".tr,
                            textInputAction: TextInputAction.done);
                      })))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
