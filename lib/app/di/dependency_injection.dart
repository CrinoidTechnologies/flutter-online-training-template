import 'package:get_it/get_it.dart';
import '../../ui/controllers/theme_controller.dart';

/// global variable to access Service Locator
final appSL = GetIt.instance;

/// All the component belongs to data and domain layer will be created
/// as lazy singleton i.e they will initialized only when they used
///
/// Components belongs to presentation layer will be created by factory i.e
/// a new instance will be created every time we call it. A place where it is
/// initialized has a responsibility to dispose.

Future<void> initServiceLocator() async {
  ///Extras
  appSL.registerSingleton<ThemeController>(ThemeController());
}
