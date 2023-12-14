import '../twitter_new_message_screen/widgets/searchfield_item_widget.dart';
import 'models/searchfield_item_model.dart';
import 'notifier/twitter_new_message_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_image.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';

class TwitterNewMessageScreen extends ConsumerStatefulWidget {
  const TwitterNewMessageScreen({Key? key}) : super(key: key);

  @override
  TwitterNewMessageScreenState createState() => TwitterNewMessageScreenState();
}

class TwitterNewMessageScreenState
    extends ConsumerState<TwitterNewMessageScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Consumer(builder: (context, ref, _) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 1.v);
                  },
                  itemCount: ref
                          .watch(twitterNewMessageNotifier)
                          .twitterNewMessageModelObj
                          ?.searchfieldItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    SearchfieldItemModel model = ref
                            .watch(twitterNewMessageNotifier)
                            .twitterNewMessageModelObj
                            ?.searchfieldItemList[index] ??
                        SearchfieldItemModel();
                    return SearchfieldItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 18.h, top: 13.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "lbl_new_message".tr),
        styleType: Style.bgShadow);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
