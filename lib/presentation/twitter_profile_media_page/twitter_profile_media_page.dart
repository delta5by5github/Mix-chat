import 'notifier/twitter_profile_media_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwitterProfileMediaPage extends ConsumerStatefulWidget {
  const TwitterProfileMediaPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterProfileMediaPageState createState() => TwitterProfileMediaPageState();
}

class TwitterProfileMediaPageState
    extends ConsumerState<TwitterProfileMediaPage>
    with AutomaticKeepAliveClientMixin<TwitterProfileMediaPage> {
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
          child: _buildPrimaryAccountRow(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrimaryAccountRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBluegray1002,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                  bottom: 27.v,
                ),
              ),
              Container(
                height: 85.v,
                width: 311.h,
                margin: EdgeInsets.only(left: 8.h),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "lbl_pixsellz2".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 62.h,
                          top: 1.v,
                        ),
                        child: Text(
                          "msg_pixsellz_12_23_19".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 306.h,
                        child: Text(
                          "msg_freebie_alert".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeGray90001_1.copyWith(
                            height: 1.28,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDownBlueGray200,
                      height: 4.v,
                      width: 9.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 7.v),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 63.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_download".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: "msg_apps_pixsellz_io".tr,
                    style: CustomTextStyles.bodyLargeBlue400,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20.v),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 266.h,
              margin: EdgeInsets.only(
                left: 63.h,
                right: 45.h,
              ),
              child: Text(
                "msg_freebie_uidesign".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeBlue400_1.copyWith(
                  height: 1.28,
                ),
              ),
            ),
          ),
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 175.v,
            width: 311.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 80.v),
        ],
      ),
    );
  }
}
