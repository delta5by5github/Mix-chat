import 'notifier/twitter_profile_tweets_replies_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TwitterProfileTweetsRepliesPage extends ConsumerStatefulWidget {
  const TwitterProfileTweetsRepliesPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterProfileTweetsRepliesPageState createState() =>
      TwitterProfileTweetsRepliesPageState();
}

class TwitterProfileTweetsRepliesPageState
    extends ConsumerState<TwitterProfileTweetsRepliesPage>
    with AutomaticKeepAliveClientMixin<TwitterProfileTweetsRepliesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBluegray1002,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPrimaryAccount,
                      height: 55.adaptSize,
                      width: 55.adaptSize,
                      radius: BorderRadius.circular(
                        27.h,
                      ),
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 97.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 41.v,
                                width: 195.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "lbl_pixsellz2".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 39.v,
                                        width: 195.h,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                "msg_pixsellz_2_14_20".tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                "msg_must_have_icon_collections"
                                                    .tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowDownBlueGray200,
                                height: 4.v,
                                width: 9.h,
                                margin: EdgeInsets.only(
                                  top: 7.v,
                                  bottom: 29.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgMedia79x374,
                            height: 79.v,
                            width: 311.h,
                          ),
                          SizedBox(height: 10.v),
                          Container(
                            width: 305.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 14.v,
                                  width: 15.h,
                                ),
                                Spacer(
                                  flex: 22,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 12.v,
                                  width: 17.h,
                                ),
                                Spacer(
                                  flex: 21,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgFavoriteOnsecondarycontainer,
                                  height: 14.v,
                                  width: 15.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "lbl_1".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Spacer(
                                  flex: 19,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTwitter,
                                  height: 14.v,
                                  width: 15.h,
                                ),
                                Spacer(
                                  flex: 36,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgActivityIcon,
                                  height: 14.v,
                                  width: 8.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                decoration: AppDecoration.outlineBluegray1002,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 28.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRound11,
                          height: 55.adaptSize,
                          width: 55.adaptSize,
                          radius: BorderRadius.circular(
                            27.h,
                          ),
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 28.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "lbl_komol_kuchkarov".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Text(
                                    "msg_kkuchka_2_13_20".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowDownBlueGray200,
                                    height: 4.v,
                                    width: 9.h,
                                    margin: EdgeInsets.only(
                                      top: 7.v,
                                      bottom: 9.v,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 294.h,
                                margin: EdgeInsets.only(right: 17.h),
                                child: Text(
                                  "msg_quickly_create_a2".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    height: 1.31,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.only(right: 23.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_get_it_now_on4".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                            TextSpan(
                              text: "msg_constructor_pixsellz_io3".tr,
                              style: CustomTextStyles.bodyLargeBlue400,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      height: 106.v,
                      width: 311.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle374x374,
                            height: 175.v,
                            width: 311.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 35.h,
                              margin: EdgeInsets.only(left: 10.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.h,
                                vertical: 2.v,
                              ),
                              decoration: AppDecoration.fillGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "lbl_0_11".tr,
                                style: CustomTextStyles.labelLargeBlack900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: CustomIconButton(
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              padding: EdgeInsets.all(7.h),
                              alignment: Alignment.bottomCenter,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgOverflowMenu,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
