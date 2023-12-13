import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../app_theme.dart';

const ThemeIndicatorIcons = [
  Icons.brightness_auto_sharp,
  Icons.light_mode,
  Icons.dark_mode,
];

class ThemeController extends GetxController {
  final currentThemeMode = Rx<ThemeMode?>(null);

  @override
  void onInit() {
    super.onInit();
    var window = SchedulerBinding.instance!.window;
    window.onPlatformBrightnessChanged = () {
      // This callback is called every time the brightness changes by device settings.
      var brightness = window.platformBrightness;
      if (currentThemeMode.value == ThemeMode.system) {
        setThemeMode(ThemeMode.system, showMessage: true);
      }
    };
    //Set initial theme from last saved in preferences or default which is light
    setThemeMode(ThemeMode.light);
  }

  ///Switch between available themes
  toggleTheme() {
    var newTheme = currentThemeMode.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    setThemeMode(newTheme, showMessage: true);
  }

  //TODO : when changing language, the text colors are not setting properly.. maybe due to the ThemeData not being set properly in GET
  void setThemeMode(ThemeMode themeMode, {bool showMessage = false}) {
    var theme = AppTheme.fromThemeMode(themeMode);
    print(
        'Current theme : $currentThemeMode \nNew theme : $themeMode ${theme.themType}');
    //If we don't delete the old instance, the new will not be added
    Get.delete<AppTheme>(force: true);
    Get.put(theme, permanent: true);

    Get.changeThemeMode(themeMode);
    currentThemeMode.value = themeMode;
    update();
  }

  ///This function is use to set the theme data with appropriate topography to the GET.
  ///This must be called from didChangeDependencies of the screen in which theme is being changed
  setThemeData(BuildContext context) async {
    // await Future.delayed(const Duration(milliseconds: 50));
    Get.delete<ThemeData>(force: true);
    Get.put(Theme.of(context), permanent: true);
  }
}
