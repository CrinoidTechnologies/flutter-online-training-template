import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_training_template/ui/color_helper.dart';

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = AppTextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class AppTextStyles {
  static TextStyle get display1 =>
      Get.find<ThemeData>().textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 36,
            letterSpacing: 0.4,
            height: 0.9,
            color: ColorHelper.grey900Color,
          );

  static TextStyle get headline =>
      Get.find<ThemeData>().textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 0.27,
            color: ColorHelper.grey900Color,
          );

  static TextStyle title = Get.find<ThemeData>().textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        letterSpacing: 0.18,
        color: ColorHelper.grey900Color,
      );

  static TextStyle get subtitle =>
      Get.find<ThemeData>().textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: -0.04,
            color: ColorHelper.grey700Color,
          );

  static TextStyle get body2 =>
      Get.find<ThemeData>().textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: 0.2,
            color: ColorHelper.grey700Color,
          );

  static TextStyle get body2FixedLightColor =>
      body2.copyWith(color: ColorHelper.fixedLightColor);

  static TextStyle get body1 =>
      Get.find<ThemeData>().textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: -0.05,
            color: ColorHelper.grey700Color,
          );

  static TextStyle get caption =>
      Get.find<ThemeData>().textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            letterSpacing: 0.2,
            color: ColorHelper.grey400Color,
          );

  static TextStyle captionError = caption.copyWith(
    color: ColorHelper.errorColor,
  );
}
