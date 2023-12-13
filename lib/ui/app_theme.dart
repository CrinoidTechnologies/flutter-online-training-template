import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:online_training_template/ui/text_styles.dart';

import 'styles.dart';

enum ThemeType { light, dark }

class AppTheme {
  final ThemeType themType;

  AppTheme(
    this.themType, {
    required this.isDark,
    required this.primaryMaterialColor,
  });

  bool isDark;

  static const int _appGrayColorValue = 0xFF8D959D;
  static const int _appPrimaryColorValue = 0xFF469d89;

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(_appPrimaryColorValue);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  MaterialColor primaryMaterialColor;

  MaterialColor get greyMaterialColor => isDark
      ? const MaterialColor(
          _appGrayColorValue,
          <int, Color>{
            50: Color(0xFFF8F9FA),
            100: Color(0xFFE9ECEF),
            200: Color(0xFFDEE2E6),
            300: Color(0xFFCED4DA),
            400: Color(0xFFADB5BD),
            500: Color(0xFFF8F9FA),
            600: Color(0xFFE9ECEF),
            700: Color(0xFFDEE2E6),
            800: Color(0xFFCED4DA),
            900: Color(0xFFADB5BD),
          },
        )
      : const MaterialColor(
          _appGrayColorValue,
          <int, Color>{
            50: Color(0xFFF8F9FA),
            100: Color(0xFFE9ECEF),
            200: Color(0xFFDEE2E6),
            300: Color(0xFFCED4DA),
            400: Color(0xFFADB5BD),
            500: Color(_appGrayColorValue),
            600: Color(0xFF6C757D),
            700: Color(0xFF495057),
            800: Color(0xFF343A40),
            900: Color(0xFF212529),
          },
        );

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  factory AppTheme.light() => AppTheme(
        ThemeType.light,
        isDark: false,
        primaryMaterialColor: const MaterialColor(
          _appPrimaryColorValue,
          <int, Color>{
            50: Color(0xFF99e2b4),
            100: Color(0xFF88d4ab),
            200: Color(0xFF78c6a3),
            300: Color(0xFF67b99a),
            400: Color(0xFF56ab91),
            500: Color(_appPrimaryColorValue),
            600: Color(0xFF358f80),
            700: Color(0xFF248277),
            800: Color(0xFF14746f),
            900: Color(0xFF036666),
          },
        ),
      );

  factory AppTheme.dark() => AppTheme(
        ThemeType.dark,
        isDark: true,
        primaryMaterialColor: const MaterialColor(
          _appPrimaryColorValue,
          <int, Color>{
            50: Color(0xFF99e2b4),
            100: Color(0xFF88d4ab),
            200: Color(0xFF78c6a3),
            300: Color(0xFF67b99a),
            400: Color(0xFF56ab91),
            500: Color(_appPrimaryColorValue),
            600: Color(0xFF358f80),
            700: Color(0xFF248277),
            800: Color(0xFF14746f),
            900: Color(0xFF036666),
          },
        ),
      );

  factory AppTheme.fromThemeMode(ThemeMode t) {
    switch (t) {
      case ThemeMode.light:
        return AppTheme.fromType(ThemeType.light);
      case ThemeMode.dark:
        return AppTheme.fromType(ThemeType.dark);
      case ThemeMode.system:
        {
          var brightness = SchedulerBinding.instance!.window.platformBrightness;
          bool isDarkMode = brightness == Brightness.dark;
          return AppTheme.fromType(
              isDarkMode ? ThemeType.dark : ThemeType.light);
        }
    }
  }

  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme.light();
      case ThemeType.dark:
        return AppTheme.dark();
      default:
        return AppTheme.light();
    }
  }

  ThemeData get themeData => ThemeData(
      fontFamily: Fonts.Roboto,
      primarySwatch: primaryMaterialColor,
      // textTheme: textTheme,
      colorScheme:
          isDark ? const ColorScheme.dark() : const ColorScheme.light());

  static TextTheme textTheme = TextTheme(
    headlineMedium: AppTextStyles.display1,
    headlineSmall: AppTextStyles.headline,
    titleLarge: AppTextStyles.title,
    titleSmall: AppTextStyles.subtitle,
    bodyLarge: AppTextStyles.body2,
    bodyMedium: AppTextStyles.body1,
    bodySmall: AppTextStyles.caption,
  );

  Color get fixedLightColor => Colors.white;

  Color get fixedDarkColor => Colors.black;

  Color get lightColor => Colors.white; // will be changed acc to app theme

  Color get darkColor => Colors.black; // will be changed acc to app theme

  Color get bgColor => themeData.colorScheme.background;

  Color get cardBgColor =>
      isDark ? const Color(0xFF343A40) : const Color(0xFFF8FAFB);

  Color get secondaryColor => const Color(0xFFFF5844);

  Color get errorColor => const Color(0xFFB00020);
}
