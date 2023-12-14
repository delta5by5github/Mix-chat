import '../twitter_lists_members_of_page/widgets/teamlist_item_widget.dart';
import 'models/teamlist_item_model.dart';
import 'notifier/twitter_lists_members_of_notifier.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwitterListsMembersOfPage extends ConsumerStatefulWidget {
  const TwitterListsMembersOfPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwitterListsMembersOfPageState createState() =>
      TwitterListsMembersOfPageState();
}

class TwitterListsMembersOfPageState
    extends ConsumerState<TwitterListsMembersOfPage>
    with AutomaticKeepAliveClientMixin<TwitterListsMembersOfPage> {
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
          child: _buildTeamList(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTeamList(BuildContext context) {
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
                  .watch(twitterListsMembersOfNotifier)
                  .twitterListsMembersOfModelObj
                  ?.teamlistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            TeamlistItemModel model = ref
                    .watch(twitterListsMembersOfNotifier)
                    .twitterListsMembersOfModelObj
                    ?.teamlistItemList[index] ??
                TeamlistItemModel();
            return TeamlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
