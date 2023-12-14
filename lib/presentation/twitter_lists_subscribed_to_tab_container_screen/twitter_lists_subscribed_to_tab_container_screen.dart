import 'notifier/twitter_lists_subscribed_to_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_home_page/twitter_home_page.dart';
import 'package:mix_chat/presentation/twitter_lists_members_of_page/twitter_lists_members_of_page.dart';
import 'package:mix_chat/presentation/twitter_lists_subscribed_to_page/twitter_lists_subscribed_to_page.dart';
import 'package:mix_chat/presentation/twitter_messages_page/twitter_messages_page.dart';
import 'package:mix_chat/presentation/twitter_notifications_mentions_tab_container_page/twitter_notifications_mentions_tab_container_page.dart';
import 'package:mix_chat/presentation/twitter_trends_page/twitter_trends_page.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_image.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_bottom_bar.dart';
import 'package:mix_chat/widgets/custom_floating_button.dart';

class TwitterListsSubscribedToTabContainerScreen
    extends ConsumerStatefulWidget {
  const TwitterListsSubscribedToTabContainerScreen({Key? key})
      : super(key: key);

  @override
  TwitterListsSubscribedToTabContainerScreenState createState() =>
      TwitterListsSubscribedToTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class TwitterListsSubscribedToTabContainerScreenState
    extends ConsumerState<TwitterListsSubscribedToTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildTabview(context),
                  SizedBox(
                      height: 681.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            TwitterListsSubscribedToPage(),
                            TwitterListsMembersOfPage()
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: _buildFloatingActionButton(context)));
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
        title: AppbarSubtitleOne(text: "lbl_lists".tr),
        styleType: Style.bgFill);
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
            labelPadding: EdgeInsets.zero,
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
              Tab(child: Text("lbl_subscribed_to".tr)),
              Tab(child: Text("lbl_member_of".tr))
            ]));
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
            imagePath: ImageConstant.imgFile, height: 28.0.v, width: 28.0.h));
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
