import 'notifier/twitter_notifications_mentions_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_notifications_all_page/twitter_notifications_all_page.dart';
import 'package:mix_chat/presentation/twitter_notifications_mentions_page/twitter_notifications_mentions_page.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:mix_chat/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class TwitterNotificationsMentionsTabContainerPage
    extends ConsumerStatefulWidget {
  const TwitterNotificationsMentionsTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterNotificationsMentionsTabContainerPageState createState() =>
      TwitterNotificationsMentionsTabContainerPageState();
}

class TwitterNotificationsMentionsTabContainerPageState
    extends ConsumerState<TwitterNotificationsMentionsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

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
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTabview(context),
              SizedBox(
                height: 680.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    TwitterNotificationsAllPage(),
                    TwitterNotificationsMentionsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRound,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleSeven(
        text: "lbl_notifications".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 11.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
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
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      ),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.blue400,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onSecondaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: appTheme.blue400,
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_mentions".tr,
            ),
          ),
        ],
      ),
    );
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
        width: 28.0.h,
      ),
    );
  }
}
