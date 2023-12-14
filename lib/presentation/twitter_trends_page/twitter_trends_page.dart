import 'notifier/twitter_trends_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mix_chat/widgets/app_bar/appbar_title_searchview.dart';
import 'package:mix_chat/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_elevated_button.dart';
import 'package:mix_chat/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class TwitterTrendsPage extends ConsumerStatefulWidget {
  const TwitterTrendsPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterTrendsPageState createState() => TwitterTrendsPageState();
}

class TwitterTrendsPageState extends ConsumerState<TwitterTrendsPage> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildFive(context),
              Spacer(),
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
      height: 45.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRound,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 7.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: Consumer(
        builder: (context, ref, _) {
          return AppbarTitleSearchview(
            hintText: "lbl_search_twitter".tr,
            controller: ref.watch(twitterTrendsNotifier).searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.fromLTRB(17.h, 12.v, 22.h, 11.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineBlueGray,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text(
                "lbl_trends_for_you".tr,
                style: CustomTextStyles.titleMediumExtraBold19,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 38.h,
            vertical: 37.v,
          ),
          decoration: AppDecoration.outlineBlueGray,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "msg_no_new_trends_for".tr,
                style: CustomTextStyles.titleLargeExtraBold_2,
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: 336.h,
                child: Text(
                  "msg_it_seems_like_there_s".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 11.v),
              CustomElevatedButton(
                width: 136.h,
                text: "lbl_change_location".tr,
              ),
            ],
          ),
        ),
      ],
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
