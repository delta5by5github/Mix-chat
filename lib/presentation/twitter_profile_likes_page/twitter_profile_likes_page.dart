import 'notifier/twitter_profile_likes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwitterProfileLikesPage extends ConsumerStatefulWidget {
  const TwitterProfileLikesPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterProfileLikesPageState createState() => TwitterProfileLikesPageState();
}

class TwitterProfileLikesPageState
    extends ConsumerState<TwitterProfileLikesPage>
    with AutomaticKeepAliveClientMixin<TwitterProfileLikesPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
                        bottom: 315.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 311.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_komol_kuchkarov".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_kkuchkarov_6d".tr,
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
                                    bottom: 8.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Container(
                            width: 306.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "msg_when_we_first_launched".tr,
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeGray90001_1
                                  .copyWith(
                                height: 1.28,
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle174x311,
                            height: 174.v,
                            width: 311.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgContrast,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          "lbl_1".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 33,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgThumbsUp,
                                        height: 12.v,
                                        width: 18.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                          "lbl_1".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 34,
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFavoritePink600,
                                        height: 14.v,
                                        width: 15.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          "lbl_32".tr,
                                          style:
                                              CustomTextStyles.bodySmallPink600,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 32,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgTwitter,
                                        height: 14.v,
                                        width: 15.h,
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgActivityIcon,
                                  height: 13.v,
                                  width: 8.h,
                                  margin: EdgeInsets.only(left: 36.h),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 63.h),
                  child: Text(
                    "msg_show_this_thread".tr,
                    style: CustomTextStyles.bodyLargeBlue400_1,
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
