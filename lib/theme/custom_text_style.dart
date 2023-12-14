import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLarge17_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLarge19 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 19.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack90019 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
      );
  static get bodyLargeBlue400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue400,
      );
  static get bodyLargeBlue40017 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get bodyLargeBlue40017_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get bodyLargeBlue400_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue400,
      );
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray9000119 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 19.fSize,
      );
  static get bodyLargeGray90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeGray90001_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyLargeOnPrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumBlue400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue400,
      );
  static get bodyMediumBlue400_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue400,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get bodySmallGreen400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green400,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPink600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.pink600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLarge_1 => theme.textTheme.labelLarge!;
  // Title text style
  static get titleLargeBlue400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue400,
      );
  static get titleLargeExtraBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleLargeExtraBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleLargeExtraBold_2 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleLargeGray300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray300,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnSecondaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleLargeOnSecondaryContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlue400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue400,
      );
  static get titleMediumBlue40017 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get titleMediumBlue40017_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue400,
        fontSize: 17.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumExtraBold17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumExtraBold17_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumExtraBold19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleMediumOnSecondaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnSecondaryContainerExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumOnSecondaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnSecondaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlue400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue400,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallOnSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }
}
