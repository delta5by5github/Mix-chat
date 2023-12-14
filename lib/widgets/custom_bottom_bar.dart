import 'package:flutter/material.dart';
import 'package:mix_chat/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgThumbsUpBlue400,
      activeIcon: ImageConstant.imgThumbsUpBlue400,
      type: BottomBarEnum.Thumbsupblue400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchOnsecondarycontainer,
      activeIcon: ImageConstant.imgSearchOnsecondarycontainer,
      type: BottomBarEnum.Searchonsecondarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBellStrokeIcon,
      activeIcon: ImageConstant.imgBellStrokeIcon,
      type: BottomBarEnum.Bellstrokeicon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray200,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.33,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 19.adaptSize,
              width: 19.adaptSize,
              color: theme.colorScheme.onSecondaryContainer,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 20.v,
              width: 22.h,
              color: appTheme.blue400,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Thumbsupblue400,
  Searchonsecondarycontainer,
  Bellstrokeicon,
  Lock,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
