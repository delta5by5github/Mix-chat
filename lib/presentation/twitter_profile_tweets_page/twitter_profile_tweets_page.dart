import 'notifier/twitter_profile_tweets_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TwitterProfileTweetsPage extends ConsumerStatefulWidget {
  const TwitterProfileTweetsPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterProfileTweetsPageState createState() =>
      TwitterProfileTweetsPageState();
}

class TwitterProfileTweetsPageState
    extends ConsumerState<TwitterProfileTweetsPage>
    with AutomaticKeepAliveClientMixin<TwitterProfileTweetsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 3.v,
                        bottom: 46.v,
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 11.v,
                            width: 9.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 3.h),
                          ),
                          SizedBox(height: 7.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgPrimaryAccount,
                            height: 55.adaptSize,
                            width: 55.adaptSize,
                            radius: BorderRadius.circular(
                              27.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_pinned_tweet".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 311.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_pixsellz2".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "msg_pixsellz_7_31_19".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                                Spacer(),
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
                          ),
                          Container(
                            width: 261.h,
                            margin: EdgeInsets.only(right: 50.h),
                            child: Text(
                              "msg_scheme_constructor".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.28,
                              ),
                            ),
                          ),
                          Text(
                            "msg_constructor_pixsellz_io2".tr,
                            style: CustomTextStyles.bodyLargeBlue400_1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 21.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_prototyping_wireframe".tr,
                        style: CustomTextStyles.bodyLargeBlue400_1,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      height: 175.v,
                      width: 311.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle175x311,
                            height: 175.v,
                            width: 311.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                bottom: 10.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    alignment: Alignment.centerRight,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgOverflowMenu,
                                    ),
                                  ),
                                  SizedBox(height: 42.v),
                                  Container(
                                    width: 35.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.h,
                                      vertical: 1.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Text(
                                      "lbl_0_11".tr,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 63.h),
                        child: Text(
                          "lbl_109_views".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 64.h,
                        right: 5.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgContrast,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_22".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(
                            flex: 19,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 12.v,
                            width: 18.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_22".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Spacer(
                            flex: 20,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFavoritePink600,
                            height: 14.v,
                            width: 15.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_15".tr,
                              style: CustomTextStyles.bodySmallPink600,
                            ),
                          ),
                          Spacer(
                            flex: 17,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgTwitter,
                            height: 14.v,
                            width: 15.h,
                          ),
                          Spacer(
                            flex: 42,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgActivityIcon,
                            height: 13.v,
                            width: 8.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
