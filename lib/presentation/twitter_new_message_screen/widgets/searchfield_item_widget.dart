import '../models/searchfield_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

// ignore: must_be_immutable
class SearchfieldItemWidget extends StatelessWidget {
  SearchfieldItemWidget(
    this.searchfieldItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchfieldItemModel searchfieldItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: searchfieldItemModelObj?.searchImage,
            height: 13.adaptSize,
            width: 13.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
          ),
          Container(
            height: 21.v,
            width: 227.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 3.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    searchfieldItemModelObj.searchText!,
                    style: CustomTextStyles.bodyLarge17_1,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: SizedBox(
                      height: 19.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                        color: appTheme.blue400,
                      ),
                    ),
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
