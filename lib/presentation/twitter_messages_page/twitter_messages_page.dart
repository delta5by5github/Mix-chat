import '../twitter_messages_page/widgets/twittermessages_item_widget.dart';
import 'models/twittermessages_item_model.dart';
import 'notifier/twitter_messages_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mix_chat/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:mix_chat/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mix_chat/widgets/app_bar/custom_app_bar.dart';
import 'package:mix_chat/widgets/custom_floating_button.dart';
import 'package:mix_chat/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class TwitterMessagesPage extends ConsumerStatefulWidget {
  const TwitterMessagesPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterMessagesPageState createState() => TwitterMessagesPageState();
}

class TwitterMessagesPageState extends ConsumerState<TwitterMessagesPage> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSearchBar(context),
              SizedBox(height: 1.v),
              _buildTwitterMessages(context),
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
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgRound,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 6.v,
          bottom: 6.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleSeven(
        text: "lbl_messages".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 11.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSearchBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBluegray2001,
      child: Consumer(
        builder: (context, ref, _) {
          return CustomSearchView(
            controller: ref.watch(twitterMessagesNotifier).searchController,
            hintText: "msg_search_for_people".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwitterMessages(BuildContext context) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
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
                    .watch(twitterMessagesNotifier)
                    .twitterMessagesModelObj
                    ?.twittermessagesItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              TwittermessagesItemModel model = ref
                      .watch(twitterMessagesNotifier)
                      .twitterMessagesModelObj
                      ?.twittermessagesItemList[index] ??
                  TwittermessagesItemModel();
              return TwittermessagesItemWidget(
                model,
              );
            },
          );
        },
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
        imagePath: ImageConstant.imgAddIcon,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }
}
