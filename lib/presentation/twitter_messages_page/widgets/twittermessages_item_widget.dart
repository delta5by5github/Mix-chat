import '../models/twittermessages_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore: must_be_immutable
class TwittermessagesItemWidget extends StatelessWidget {
  TwittermessagesItemWidget(
    this.twittermessagesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwittermessagesItemModel twittermessagesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: twittermessagesItemModelObj?.circleImage,
            height: 55.adaptSize,
            width: 55.adaptSize,
            radius: BorderRadius.circular(
              27.h,
            ),
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Container(
            height: 41.v,
            width: 311.h,
            margin: EdgeInsets.only(
              left: 8.h,
              bottom: 19.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    twittermessagesItemModelObj.text1!,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_azizdjan".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_a_azizdjan".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        twittermessagesItemModelObj.text3!,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
