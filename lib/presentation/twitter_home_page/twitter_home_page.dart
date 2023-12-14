import 'notifier/twitter_home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:mix_chat/widgets/app_bar/appbar_title_image.dart';
import 'package:mix_chat/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class TwitterHomePage extends ConsumerStatefulWidget {
  const TwitterHomePage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterHomePageState createState() => TwitterHomePageState();
}

class TwitterHomePageState extends ConsumerState<TwitterHomePage> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900.withOpacity(0.2),
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 725.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 594.v),
                child: _buildFavoriteRow(
                  context,
                  zackJohnLiked: "lbl_zack_john_liked".tr,
                  maximmilianmaxjacobsonh: "msg_karennne_karennne".tr,
                  yAllReadyFor: "msg_name_a_show_where".tr,
                  fortySix: "lbl_1_906".tr,
                  eighteen: "lbl_1_249".tr,
                  threeHundredSixtyThree: "lbl_7_461".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 199.v,
                  bottom: 435.v,
                ),
                child: _buildFavoriteRow(
                  context,
                  zackJohnLiked: "lbl_zack_john_liked".tr,
                  maximmilianmaxjacobsonh: "msg_maximmilian_maxjacobson".tr,
                  yAllReadyFor: "msg_y_all_ready_for".tr,
                  fortySix: "lbl_46".tr,
                  eighteen: "lbl_18".tr,
                  threeHundredSixtyThree: "lbl_363".tr,
                ),
              ),
              _buildTweetColumn(context),
              _buildTweetColumn1(context),
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
      leadingWidth: 201.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgRound,
        margin: EdgeInsets.only(right: 169.h),
      ),
      title: Container(
        margin: EdgeInsets.only(
          left: 25.h,
          top: 1.v,
          bottom: 5.v,
        ),
        decoration: AppDecoration.row1,
        child: Row(
          children: [
            Container(
              height: 6.adaptSize,
              width: 6.adaptSize,
              margin: EdgeInsets.only(bottom: 20.v),
              decoration: BoxDecoration(
                color: appTheme.blue400,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimaryContainer,
                  width: 1.h,
                  strokeAlign: strokeAlignOutside,
                ),
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgTrash,
              margin: EdgeInsets.only(
                left: 143.h,
                top: 4.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.fromLTRB(22.h, 12.v, 22.h, 11.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildTweetColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 6.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 11.v,
                        width: 12.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 1.h),
                      ),
                      SizedBox(height: 6.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgRound2,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        radius: BorderRadius.circular(
                          27.h,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      SizedBox(
                        height: 65.v,
                        child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: appTheme.blueGray100,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_kieron_dotson_and".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 3.v),
                        _buildMarthaCraigcraigloveh(
                          context,
                          messageText: "msg_martha_craig_craig_love".tr,
                        ),
                        Container(
                          width: 300.h,
                          margin: EdgeInsets.only(right: 11.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_uxr_ux_you_can2".tr,
                                  style: CustomTextStyles.bodyLargeGray90001_2,
                                ),
                                TextSpan(
                                  text: "lbl_tellmeaboutyou".tr,
                                  style: CustomTextStyles.bodyLargeBlue400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Container(
                          width: 259.h,
                          margin: EdgeInsets.only(right: 50.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 14.v,
                                width: 15.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text(
                                  "lbl_28".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Spacer(
                                flex: 30,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgThumbsUp,
                                height: 12.v,
                                width: 17.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "lbl_5".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Spacer(
                                flex: 35,
                              ),
                              SizedBox(
                                width: 29.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgFavoriteOnsecondarycontainer,
                                      height: 14.v,
                                      width: 15.h,
                                    ),
                                    Text(
                                      "lbl_21".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(
                                flex: 33,
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
                ),
              ],
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRound37x37,
                    height: 37.adaptSize,
                    width: 37.adaptSize,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      top: 8.v,
                      bottom: 8.v,
                    ),
                    child: Text(
                      "msg_show_this_thread".tr,
                      style: CustomTextStyles.bodyLargeBlue400_1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTweetColumn1(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 145.v),
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 247.v,
              width: 374.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 306.h,
                      margin: EdgeInsets.only(right: 4.h),
                      child: Text(
                        "msg_kobe_s_passing_is".tr,
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeGray90001_1.copyWith(
                          height: 1.28,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRetweetStrokeIcon,
                                height: 10.v,
                                width: 14.h,
                                margin: EdgeInsets.only(
                                  top: 4.v,
                                  bottom: 2.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  "msg_kieron_dotson_retweeted".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRound3,
                              height: 55.adaptSize,
                              width: 55.adaptSize,
                              radius: BorderRadius.circular(
                                27.h,
                              ),
                              margin: EdgeInsets.only(top: 2.v),
                            ),
                            Container(
                              height: 20.v,
                              width: 258.h,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                bottom: 37.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_tabitha_potter".tr,
                                            style: theme.textTheme.titleMedium,
                                          ),
                                          TextSpan(
                                            text: "      ".tr,
                                          ),
                                          TextSpan(
                                            text: "lbl_mis_potter".tr,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                          TextSpan(
                                            text: "lbl_14h".tr,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(
                                      left: 112.h,
                                      top: 2.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 5.v,
                              width: 10.h,
                              margin: EdgeInsets.only(
                                top: 7.v,
                                bottom: 45.v,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(
                left: 65.h,
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
                    flex: 33,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 12.v,
                    width: 17.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_1".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(
                    flex: 35,
                  ),
                  SizedBox(
                    width: 28.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgFavoriteOnsecondarycontainer,
                          height: 14.v,
                          width: 15.h,
                        ),
                        Text(
                          "lbl_11".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 31,
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

  /// Common widget
  Widget _buildFavoriteRow(
    BuildContext context, {
    required String zackJohnLiked,
    required String maximmilianmaxjacobsonh,
    required String yAllReadyFor,
    required String fortySix,
    required String eighteen,
    required String threeHundredSixtyThree,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 8.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 11.v,
                  width: 12.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 1.h),
                ),
                SizedBox(height: 6.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRound1,
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    zackJohnLiked,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_maximmilian".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "msg_maxjacobson_3h".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 5.v,
                        width: 10.h,
                        margin: EdgeInsets.only(
                          left: 63.h,
                          top: 6.v,
                          bottom: 7.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    yAllReadyFor,
                    style: CustomTextStyles.bodyLargeGray90001_1.copyWith(
                      color: appTheme.gray90001,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    width: 259.h,
                    margin: EdgeInsets.only(right: 50.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                          height: 14.v,
                          width: 15.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            fortySix,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: theme.colorScheme.onSecondaryContainer,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 33,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 12.v,
                          width: 17.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            eighteen,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: theme.colorScheme.onSecondaryContainer,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 36,
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgFavoriteOnsecondarycontainer,
                          height: 14.v,
                          width: 15.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            threeHundredSixtyThree,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: theme.colorScheme.onSecondaryContainer,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 29,
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
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMarthaCraigcraigloveh(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_martha_craig".tr,
                style: theme.textTheme.titleMedium,
              ),
              TextSpan(
                text: " ",
              ),
              TextSpan(
                text: "lbl_craig_love".tr,
                style: theme.textTheme.bodyLarge,
              ),
              TextSpan(
                text: "lbl".tr,
                style: theme.textTheme.bodyLarge,
              ),
              TextSpan(
                text: "lbl_12h".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 5.v,
          width: 10.h,
          margin: EdgeInsets.only(
            left: 76.h,
            top: 5.v,
            bottom: 8.v,
          ),
        ),
      ],
    );
  }
}
