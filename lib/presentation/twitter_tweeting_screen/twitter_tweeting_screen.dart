import '../twitter_tweeting_screen/widgets/twittertweeting_item_widget.dart';
import 'models/twittertweeting_item_model.dart';
import 'notifier/twitter_tweeting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:mix_chat/widgets/app_bar/appbar_trailing_button.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_icon_button.dart';

class TwitterTweetingScreen extends ConsumerStatefulWidget {
  const TwitterTweetingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterTweetingScreenState createState() => TwitterTweetingScreenState();
}

class TwitterTweetingScreenState extends ConsumerState<TwitterTweetingScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildArticleBar(context),
              _buildTwitterTweeting(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleFour(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 5.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildArticleBar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 318.v),
            child: CustomIconButton(
              height: 37.adaptSize,
              width: 37.adaptSize,
              child: CustomImageView(
                imagePath: ImageConstant.imgRound15,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 8.v,
              bottom: 323.v,
            ),
            child: Text(
              "msg_what_s_happening".tr,
              style: CustomTextStyles.bodyLarge19,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwitterTweeting(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: ref
                  .watch(twitterTweetingNotifier)
                  .twitterTweetingModelObj
                  ?.twittertweetingItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            TwittertweetingItemModel model = ref
                    .watch(twitterTweetingNotifier)
                    .twitterTweetingModelObj
                    ?.twittertweetingItemList[index] ??
                TwittertweetingItemModel();
            return TwittertweetingItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
