import 'notifier/twitter_messages_settings_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/presentation/twitter_messages_settings_page/twitter_messages_settings_page.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_image.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_switch.dart';

class TwitterMessagesSettingsTabContainerScreen extends ConsumerStatefulWidget {
  const TwitterMessagesSettingsTabContainerScreen({Key? key}) : super(key: key);

  @override
  TwitterMessagesSettingsTabContainerScreenState createState() =>
      TwitterMessagesSettingsTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class TwitterMessagesSettingsTabContainerScreenState
    extends ConsumerState<TwitterMessagesSettingsTabContainerScreen>
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
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    decoration: AppDecoration.background,
                    child: Column(children: [
                      _buildAppBar(context),
                      _buildSettingsHeader(context),
                      _buildPrivacy(context)
                    ])))));
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
        title: AppbarSubtitleSix(text: "msg_messages_settings".tr),
        actions: [
          AppbarSubtitleFive(
              text: "lbl_done".tr,
              margin: EdgeInsets.symmetric(horizontal: 19.h, vertical: 11.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildSettingsHeader(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
        decoration: AppDecoration.background,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("lbl_privacy".tr,
                  style:
                      CustomTextStyles.titleMediumOnSecondaryContainerExtraBold)
            ]));
  }

  /// Section Widget
  Widget _buildPrivacy(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineBlueGray,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(children: [
                Divider(indent: 20.h),
                SizedBox(height: 6.v),
                Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 20.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 6.v, bottom: 4.v),
                                        child: Text("msg_receive_messages".tr,
                                            style:
                                                theme.textTheme.titleMedium)),
                                    Consumer(builder: (context, ref, _) {
                                      return CustomSwitch(
                                          value: ref
                                              .watch(
                                                  twitterMessagesSettingsTabContainerNotifier)
                                              .isSelectedSwitch,
                                          onChange: (value) {
                                            ref
                                                .read(
                                                    twitterMessagesSettingsTabContainerNotifier
                                                        .notifier)
                                                .changeSwitchBox1(value);
                                          });
                                    })
                                  ])),
                          SizedBox(height: 5.v),
                          Container(
                              width: 365.h,
                              margin: EdgeInsets.only(right: 29.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_you_will_be_able2".tr,
                                        style: theme.textTheme.bodyMedium),
                                    TextSpan(
                                        text: "lbl_learn_more2".tr,
                                        style:
                                            CustomTextStyles.bodyMediumBlue400)
                                  ]),
                                  textAlign: TextAlign.left))
                        ])),
                SizedBox(height: 14.v)
              ])),
          Container(
              margin: EdgeInsets.only(left: 20.h),
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    SizedBox(height: 6.v),
                    Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 6.v, bottom: 3.v),
                                  child: Text("lbl_quality_filter".tr,
                                      style: theme.textTheme.titleMedium)),
                              SizedBox(
                                  height: 31.v,
                                  width: 51.h,
                                  child: TabBar(
                                      controller: tabviewController,
                                      labelPadding: EdgeInsets.zero,
                                      tabs: [
                                        Tab(
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMask,
                                                height: 31.v,
                                                width: 51.h)),
                                        Tab(
                                            child: SizedBox(
                                                height: 30.v,
                                                width: 51.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgMask,
                                                          height: 31.v,
                                                          width: 51.h,
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgKnob,
                                                          height: 27.adaptSize,
                                                          width: 27.adaptSize,
                                                          radius: BorderRadius
                                                              .circular(13.5
                                                                  .adaptSize),
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 2.h))
                                                    ])))
                                      ]))
                            ]))
                  ])),
          SizedBox(
              height: 180.v,
              child: TabBarView(controller: tabviewController, children: [
                TwitterMessagesSettingsPage(),
                TwitterMessagesSettingsPage()
              ]))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
