import 'notifier/twitter_profile_likes_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_home_page/twitter_home_page.dart';
import 'package:mix_chat/presentation/twitter_messages_page/twitter_messages_page.dart';
import 'package:mix_chat/presentation/twitter_notifications_mentions_tab_container_page/twitter_notifications_mentions_tab_container_page.dart';
import 'package:mix_chat/presentation/twitter_profile_likes_page/twitter_profile_likes_page.dart';
import 'package:mix_chat/presentation/twitter_profile_media_page/twitter_profile_media_page.dart';
import 'package:mix_chat/presentation/twitter_profile_tweets_page/twitter_profile_tweets_page.dart';
import 'package:mix_chat/presentation/twitter_profile_tweets_replies_page/twitter_profile_tweets_replies_page.dart';
import 'package:mix_chat/presentation/twitter_trends_page/twitter_trends_page.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:mix_chat/widgets/app_bar/appbar_title.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_bottom_bar.dart';
import 'package:mix_chat/widgets/custom_floating_button.dart';
import 'package:mix_chat/widgets/custom_outlined_button.dart';

class TwitterProfileLikesTabContainerScreen extends ConsumerStatefulWidget {
  const TwitterProfileLikesTabContainerScreen({Key? key}) : super(key: key);

  @override
  TwitterProfileLikesTabContainerScreenState createState() =>
      TwitterProfileLikesTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class TwitterProfileLikesTabContainerScreenState
    extends ConsumerState<TwitterProfileLikesTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildEditProfile(context),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            _buildTabview(context),
                            _buildTabBarView(context)
                          ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  Widget _buildEditProfile(BuildContext context) {
    return SizedBox(
        height: 316.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 94.v,
              leadingWidth: 52.h,
              leading: AppbarLeadingIconbuttonOne(
                  imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
                  margin: EdgeInsets.only(left: 20.h, top: 6.v, bottom: 56.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              centerTitle: true,
              title: AppbarTitle(
                  text: "msg_digital_goodies".tr,
                  margin: EdgeInsets.only(top: 13.v, bottom: 53.v)),
              styleType: Style.bgFill_1),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 245.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 5.v),
                            decoration: AppDecoration.fillOnPrimaryContainer,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 5.v),
                                  CustomOutlinedButton(
                                      width: 93.h,
                                      text: "lbl_edit_profile".tr,
                                      margin: EdgeInsets.only(right: 1.h),
                                      alignment: Alignment.centerRight),
                                  SizedBox(height: 11.v),
                                  Text("lbl_pixsellz2".tr,
                                      style:
                                          CustomTextStyles.titleLargeExtraBold),
                                  SizedBox(height: 4.v),
                                  Text("lbl_pixsellz".tr,
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 13.v),
                                  Container(
                                      width: 317.h,
                                      margin: EdgeInsets.only(right: 57.h),
                                      child: Text("msg_digital_goodies2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyLargeGray90001_1
                                              .copyWith(height: 1.31))),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 105.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgArrowUp,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 2.v)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text("lbl_pixsellz_io".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlue400_1)),
                                        Container(
                                            width: 172.h,
                                            margin: EdgeInsets.only(left: 13.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCalendar,
                                                  height: 14.adaptSize,
                                                  width: 14.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h),
                                                  child: Text(
                                                      "msg_joined_september".tr,
                                                      style: theme.textTheme
                                                          .bodyMedium))
                                            ]))
                                      ])),
                                  SizedBox(height: 12.v),
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("lbl_217_following".tr,
                                            style: theme.textTheme.bodyMedium)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_118".tr,
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                  text: "lbl_followers".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgPrimaryAccount68x68,
                        height: 68.adaptSize,
                        width: 68.adaptSize,
                        radius: BorderRadius.circular(34.h),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20.h))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 44.v,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            boxShadow: [
              BoxShadow(
                  color: appTheme.blueGray100,
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(0, 1))
            ]),
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: appTheme.blue400,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: theme.colorScheme.onSecondaryContainer,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w600),
            indicatorColor: appTheme.blue400,
            tabs: [
              Tab(child: Text("lbl_tweets".tr)),
              Tab(child: Text("msg_tweets_replies".tr)),
              Tab(child: Text("lbl_media".tr)),
              Tab(child: Text("lbl_likes2".tr))
            ]));
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 409.v,
            child: TabBarView(controller: tabviewController, children: [
              TwitterProfileTweetsPage(),
              TwitterProfileTweetsRepliesPage(),
              TwitterProfileMediaPage(),
              TwitterProfileLikesPage()
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 56,
        width: 56,
        backgroundColor: appTheme.blue400,
        child: CustomImageView(
            imagePath: ImageConstant.imgAddTextButton,
            height: 28.0.v,
            width: 28.0.h));
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
