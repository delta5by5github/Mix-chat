import '../models/twittertweeting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TwittertweetingItemWidget extends StatelessWidget {
  TwittertweetingItemWidget(
    this.twittertweetingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwittertweetingItemModel twittertweetingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomIconButton(
              height: 78.adaptSize,
              width: 78.adaptSize,
              padding: EdgeInsets.all(25.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: twittertweetingItemModelObj?.camera,
              ),
            ),
          ),
          CustomImageView(
            imagePath: twittertweetingItemModelObj?.media,
            height: 78.adaptSize,
            width: 78.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          CustomImageView(
            imagePath: twittertweetingItemModelObj?.media1,
            height: 78.adaptSize,
            width: 78.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          CustomImageView(
            imagePath: twittertweetingItemModelObj?.media2,
            height: 78.adaptSize,
            width: 78.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          CustomImageView(
            imagePath: twittertweetingItemModelObj?.media3,
            height: 78.v,
            width: 62.h,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
        ],
      ),
    );
  }
}
