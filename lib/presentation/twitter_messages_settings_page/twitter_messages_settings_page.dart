import 'notifier/twitter_messages_settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class TwitterMessagesSettingsPage extends ConsumerStatefulWidget {
  const TwitterMessagesSettingsPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterMessagesSettingsPageState createState() =>
      TwitterMessagesSettingsPageState();
}

class TwitterMessagesSettingsPageState
    extends ConsumerState<TwitterMessagesSettingsPage>
    with AutomaticKeepAliveClientMixin<TwitterMessagesSettingsPage> {
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
              SizedBox(height: 5.v),
              Column(
                children: [
                  Container(
                    width: 366.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 28.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_filters_lower_quality2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: "lbl_learn_more".tr,
                            style: CustomTextStyles.bodyMediumBlue400,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: Column(
                      children: [
                        Divider(
                          indent: 20.h,
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 6.v,
                                        bottom: 4.v,
                                      ),
                                      child: Text(
                                        "msg_show_read_receipts".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                    Consumer(
                                      builder: (context, ref, _) {
                                        return CustomSwitch(
                                          value: ref
                                              .watch(
                                                  twitterMessagesSettingsNotifier)
                                              .isSelectedSwitch,
                                          onChange: (value) {
                                            ref
                                                .read(
                                                    twitterMessagesSettingsNotifier
                                                        .notifier)
                                                .changeSwitchBox1(value);
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Container(
                                width: 372.h,
                                margin: EdgeInsets.only(right: 20.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_when_someone_sends2".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      TextSpan(
                                        text: "lbl_learn_more".tr,
                                        style:
                                            CustomTextStyles.bodyMediumBlue400,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
