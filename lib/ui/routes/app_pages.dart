import 'package:get/get.dart';
import 'package:online_training_template/modules/course_details/presentation/bindings/course_info_binding.dart';
import 'package:online_training_template/modules/course_details/presentation/pages/course_info_page.dart';
import 'package:online_training_template/modules/home/presentation/bindings/home_binding.dart';
import 'package:online_training_template/modules/home/presentation/pages/home_page.dart';
import 'package:online_training_template/modules/login/presentation/bindings/login_binding.dart';
import 'package:online_training_template/modules/login/presentation/pages/login_page.dart';
import 'package:online_training_template/modules/signup/presentation/bindings/signup_binding.dart';
import 'package:online_training_template/modules/signup/presentation/pages/signup_page.dart';

part 'app_routes.dart';

class AppPages {
  ///This is the route which is opened when the app starts
  static const initial = Routes.loginPage;

  ///Use this route to redirect user to starting point of the app, for example after password reset.
  static const redirectHome = Routes.home;

  ///Contains all the available routes for the application
  static final routes = [
    GetPage(name: Routes.home, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.courseInfoPage,
        page: () => CourseInfoPage(),
        binding: CourseInfoBinding()),
    GetPage(
        name: Routes.loginPage,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.signupPage,
        page: () => const SignupPage(),
        binding: SignUpBinding()),
  ];

  /// Add routes which are only required for development or testing purposes to below list,
  /// these will not go in production
  static final devRoutes = <GetPage>[
    // GetPage(
    //   name: Routes.languageTest,
    //   page: () => LanguageTestApp(),
    // ),
  ];
}
