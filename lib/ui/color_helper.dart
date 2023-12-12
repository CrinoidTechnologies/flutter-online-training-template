import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_theme.dart';

class ColorHelper {
  /// fixed white Color
  static Color get fixedLightColor => Get.find<AppTheme>().fixedLightColor;

  /// fixed dark Color
  static Color get fixedDarkColor => Get.find<AppTheme>().fixedDarkColor;

  static Color get lightColor => Get.find<AppTheme>().lightColor;

  static Color get darkColor => Get.find<AppTheme>().darkColor;

  static Color get bgColor => Get.find<AppTheme>().bgColor;

  /// primary color shades
  /// shade200
  static Color get primaryExtraLightColor =>
      Get.find<AppTheme>().primaryMaterialColor.shade200;

  /// shade400
  static Color get primaryLightColor =>
      Get.find<AppTheme>().primaryMaterialColor.shade400;

  /// shade500
  static Color get primaryColor =>
      Get.find<AppTheme>().primaryMaterialColor.shade500;

  /// shade600
  static Color get primaryDarkColor =>
      Get.find<AppTheme>().primaryMaterialColor.shade600;

  /// shade700
  static Color get primaryDarkerColor =>
      Get.find<AppTheme>().primaryMaterialColor.shade700;

  static Color get primary700Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade700;

  static Color get primary800Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade800;

  static Color get primary900Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade900;

  static Color get primary600Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade600;

  static Color get primary400Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade400;

  static Color get primary300Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade300;

  static Color get primary50Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade50;

  static Color get primary100Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade100;

  static Color get primary200Color =>
      Get.find<AppTheme>().primaryMaterialColor.shade200;

  static Color get grey900Color =>
      Get.find<AppTheme>().greyMaterialColor.shade900;

  static Color get grey800Color =>
      Get.find<AppTheme>().greyMaterialColor.shade800;

  static Color get grey700Color =>
      Get.find<AppTheme>().greyMaterialColor.shade700;

  static Color get grey100Color =>
      Get.find<AppTheme>().greyMaterialColor.shade100;

  static Color get grey200Color =>
      Get.find<AppTheme>().greyMaterialColor.shade200;

  static Color get grey300Color =>
      Get.find<AppTheme>().greyMaterialColor.shade300;

  static Color get grey400Color =>
      Get.find<AppTheme>().greyMaterialColor.shade400;

  static Color get greyColor => Get.find<AppTheme>().greyMaterialColor.shade500;

  static Color get grey50Color =>
      Get.find<AppTheme>().greyMaterialColor.shade50;

  static Color get secondaryColor => Get.find<AppTheme>().secondaryColor;

  static Color get errorColor => Get.find<AppTheme>().errorColor;

  static Color get cardBgColor => Get.find<AppTheme>().cardBgColor;
}
