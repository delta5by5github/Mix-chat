import '../twitter_notifications_all_page/widgets/tweetcomponentlist_item_widget.dart';
import 'models/tweetcomponentlist_item_model.dart';
import 'notifier/twitter_notifications_all_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwitterNotificationsAllPage extends ConsumerStatefulWidget {
  const TwitterNotificationsAllPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterNotificationsAllPageState createState() =>
      TwitterNotificationsAllPageState();
}

class TwitterNotificationsAllPageState
    extends ConsumerState<TwitterNotificationsAllPage>
    with AutomaticKeepAliveClientMixin<TwitterNotificationsAllPage> {
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
          child: _buildTweetComponentList(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTweetComponentList(BuildContext context) {
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
                  .watch(twitterNotificationsAllNotifier)
                  .twitterNotificationsAllModelObj
                  ?.tweetcomponentlistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            TweetcomponentlistItemModel model = ref
                    .watch(twitterNotificationsAllNotifier)
                    .twitterNotificationsAllModelObj
                    ?.tweetcomponentlistItemList[index] ??
                TweetcomponentlistItemModel();
            return TweetcomponentlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
