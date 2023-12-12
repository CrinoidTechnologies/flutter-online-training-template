import 'package:flutter/material.dart';
import 'package:online_training_template/ui/color_helper.dart';

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = AppTextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class AppTextStyles {
  static TextStyle display1 = TextStyle(
    // h4 -> display1
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: ColorHelper.grey900Color,
  );

  static TextStyle headline = TextStyle(
    // h5 -> headline
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: ColorHelper.grey900Color,
  );

  static TextStyle title = TextStyle(
    // h6 -> title
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: ColorHelper.grey900Color,
  );

  static TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: ColorHelper.grey700Color,
  );

  static TextStyle body2 = TextStyle(
    // body1 -> body2
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: ColorHelper.grey700Color,
  );

  static TextStyle body2FixedLightColor =
      body2.copyWith(color: ColorHelper.fixedLightColor);

  static TextStyle body1 = TextStyle(
    // body2 -> body1
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: ColorHelper.grey700Color,
  );

  static TextStyle caption = TextStyle(
    // Caption -> caption
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: ColorHelper.grey400Color, // was lightText
  );

  static TextStyle captionError = caption.copyWith(
    color: ColorHelper.errorColor,
  );
}
