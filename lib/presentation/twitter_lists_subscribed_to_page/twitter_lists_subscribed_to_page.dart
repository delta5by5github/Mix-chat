import 'notifier/twitter_lists_subscribed_to_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TwitterListsSubscribedToPage extends ConsumerStatefulWidget {
  const TwitterListsSubscribedToPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterListsSubscribedToPageState createState() =>
      TwitterListsSubscribedToPageState();
}

class TwitterListsSubscribedToPageState
    extends ConsumerState<TwitterListsSubscribedToPage>
    with AutomaticKeepAliveClientMixin<TwitterListsSubscribedToPage> {
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
          child: Column(
            children: [
              SizedBox(height: 271.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 76.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: 262.h,
                      child: Text(
                        "msg_you_haven_t_created".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeExtraBold_1.copyWith(
                          height: 1.23,
                        ),
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "msg_when_you_do_it_ll".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 14.v),
                    CustomElevatedButton(
                      width: 110.h,
                      text: "lbl_create_a_list".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimaryContainer_1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
