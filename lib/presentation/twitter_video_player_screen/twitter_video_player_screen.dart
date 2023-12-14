import 'notifier/twitter_video_player_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:mix_chat/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';

class TwitterVideoPlayerScreen extends ConsumerStatefulWidget {
  const TwitterVideoPlayerScreen({Key? key}) : super(key: key);

  @override
  TwitterVideoPlayerScreenState createState() =>
      TwitterVideoPlayerScreenState();
}

class TwitterVideoPlayerScreenState
    extends ConsumerState<TwitterVideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: _buildAppBar(context),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.gray80001,
                          appTheme.gray800,
                          appTheme.gray800
                        ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgMedia414x414,
                              height: 414.adaptSize,
                              width: 414.adaptSize),
                          SizedBox(height: 60.v),
                          _buildVideoTimingBar(context)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 94.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapClose(context);
            }),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgMinimizeButton,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildVideoTimingBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: AppDecoration.fillGray900,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUser, height: 16.v, width: 11.h),
          SizedBox(
              height: 16.v,
              width: 261.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 3.v,
                        width: 261.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 261.h,
                                  child: Divider(
                                      color:
                                          theme.colorScheme.primaryContainer))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 34.h,
                                  child: Divider(
                                      color: theme
                                          .colorScheme.onPrimaryContainer)))
                        ]))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 25.h),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(8.h),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.black900.withOpacity(0.5),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 1))
                            ])))
              ])),
          Text("lbl_0_02_0_16".tr, style: CustomTextStyles.labelLarge_1)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
