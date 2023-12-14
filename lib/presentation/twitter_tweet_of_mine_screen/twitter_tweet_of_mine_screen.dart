import 'notifier/twitter_tweet_of_mine_notifier.dart';
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

class TwitterTweetOfMineScreen extends ConsumerStatefulWidget {
  const TwitterTweetOfMineScreen({Key? key}) : super(key: key);

  @override
  TwitterTweetOfMineScreenState createState() =>
      TwitterTweetOfMineScreenState();
}

// ignore_for_file: must_be_immutable
class TwitterTweetOfMineScreenState
    extends ConsumerState<TwitterTweetOfMineScreen> {
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
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: AppDecoration.background,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildTweet(context),
                                Spacer(),
                                _buildSearchBar(context)
                              ]))),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.h),
                      child: _buildBottomBar(context))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: _buildBottomBar1(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 18.h, top: 14.v, bottom: 12.v),
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
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPrimaryAccount,
                    height: 55.adaptSize,
                    width: 55.adaptSize,
                    radius: BorderRadius.circular(27.h)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 7.v, bottom: 7.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_pixsellz2".tr,
                              style: theme.textTheme.titleMedium),
                          Text("lbl_pixsellz".tr,
                              style: theme.textTheme.bodyLarge)
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray200,
                    height: 4.v,
                    width: 9.h,
                    margin: EdgeInsets.only(top: 17.v, bottom: 33.v))
              ])),
          SizedBox(height: 23.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("msg_must_have_icon_collections".tr,
                      style: CustomTextStyles.titleLargeOnSecondaryContainer))),
          SizedBox(height: 39.v),
          CustomImageView(
              imagePath: ImageConstant.imgMedia79x374,
              height: 79.v,
              width: 374.h),
          SizedBox(height: 26.v),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                controller:
                    ref.watch(twitterTweetOfMineNotifier).timestampController,
                hintText: "msg_17_18_2_14_20".tr,
                contentPadding: EdgeInsets.symmetric(horizontal: 6.h),
                borderDecoration: TextFormFieldStyleHelper.underLineBlueGray,
                filled: false);
          }),
          SizedBox(height: 12.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgActivityIcon,
                            height: 13.v,
                            width: 8.h,
                            margin: EdgeInsets.only(top: 1.v, bottom: 4.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text("msg_view_tweet_activity".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))),
          SizedBox(height: 11.v),
          Divider(color: appTheme.blueGray200),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_1".tr,
                            style: theme.textTheme.titleMedium),
                        TextSpan(
                            text: "lbl_like".tr,
                            style: theme.textTheme.bodyLarge)
                      ]),
                      textAlign: TextAlign.left))),
          SizedBox(height: 43.v)
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
                            .watch(twitterTweetOfMineNotifier)
                            .addTweetController,
                        hintText: "msg_add_another_tweet".tr,
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

  /// Section Widget
  Widget _buildBottomBar1(BuildContext context) {
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
