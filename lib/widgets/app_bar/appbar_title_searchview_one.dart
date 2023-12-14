import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';
import 'package:mix_chat/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarTitleSearchviewOne extends StatelessWidget {
  AppbarTitleSearchviewOne({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 286.h,
        controller: controller,
        hintText: "lbl_search_twitter".tr,
      ),
    );
  }
}
