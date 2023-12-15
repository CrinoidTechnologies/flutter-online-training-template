import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_training_template/modules/signup/domain/entities/signup_entity.dart';
import 'package:online_training_template/ui/color_helper.dart';
import 'package:online_training_template/ui/controllers/theme_controller.dart';
import 'package:online_training_template/ui/routes/app_pages.dart';
import 'package:online_training_template/ui/styles.dart';
import 'package:online_training_template/ui/text_styles.dart';
import 'package:online_training_template/validators/signup_validator.dart';

import '../../../../generated/l10n.dart';
import '../../../../validators/login_validator.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  late SignupEntity _signupEntity;

  String _signupStatus = '';

  @override
  void initState() {
    super.initState();
    _signupEntity = SignupEntity();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Get.find<ThemeController>().setThemeData(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorHelper.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            //to give space from top
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(Insets.l),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Get.find<ThemeController>().toggleTheme();
                      setState(() {});
                    },
                    child: Obx(
                      () => Icon(
                          Get.find<ThemeController>().currentThemeMode.value ==
                                  ThemeMode.dark
                              ? Icons.light_mode
                              : Icons.dark_mode),
                    ),
                  ),
                ),
              ),
            ),
            //page content here
            Expanded(
              flex: 9,
              child: buildCard(size),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(Size size) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        color: ColorHelper.bgColor,
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        shrinkWrap: true,
        children: <Widget>[
          //logo section
          Center(child: richText(24)),
          SizedBox(
            height: size.height * 0.05,
          ),
          //email & password section
          firstNameTextField(size),
          SizedBox(
            height: size.height * 0.02,
          ),
          lastNameTextField(size),
          SizedBox(
            height: size.height * 0.02,
          ),
          emailTextField(size),
          SizedBox(
            height: size.height * 0.02,
          ),
          passwordTextField(size),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            _signupStatus.toString(),
            style: AppTextStyles.captionError,
            key: Key('txt_error'),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          //sign in button
          signUnButton(size),
          SizedBox(
            height: size.height * 0.04,
          ),
          //footer section. sign up text here
          Center(child: footerText()),
        ],
      ),
    );
  }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: AppTextStyles.display1,
        children: [
          TextSpan(
            text: 'SignUp',
            style: const TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: S.of(context).page,
            style: TextStyle(
              color: ColorHelper.secondaryColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: AppTextStyles.body1,
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: S.of(context).email,
            labelStyle: AppTextStyles.body1,
            border: InputBorder.none),
        onChanged: (v) {
          _signupEntity.email = v;
        },
      ),
    );
  }

  Widget firstNameTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: AppTextStyles.body1,
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'First Name',
            labelStyle: AppTextStyles.body1,
            border: InputBorder.none),
        onChanged: (v) {
          _signupEntity.firstName = v;
        },
      ),
    );
  }

  Widget lastNameTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: AppTextStyles.body1,
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Last Name',
            labelStyle: AppTextStyles.body1,
            border: InputBorder.none),
        onChanged: (v) {
          _signupEntity.lastName = v;
        },
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: AppTextStyles.body1,
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: S.of(context).password,
            labelStyle: AppTextStyles.body1,
            border: InputBorder.none),
        onChanged: (v) {
          _signupEntity.password = v;
        },
      ),
    );
  }

  Widget signUnButton(Size size) {
    return InkWell(
      onTap: () {
        setState(() {
          _signupStatus = SignupValidator(
            email: _signupEntity.email,
            password: _signupEntity.password,
            firstName: _signupEntity.firstName,
            lastName: _signupEntity.lastName,
          ).validate();
          if (_signupStatus == S.of(context).validationSuccessful) {
            Get.offNamed(Routes.home);
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: size.height / 11,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: ColorHelper.primaryColor,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF4C2E84).withOpacity(0.2),
              offset: const Offset(0, 15.0),
              blurRadius: 60.0,
            ),
          ],
        ),
        child: Text(
          S.of(context).signUp,
          style: AppTextStyles.body2FixedLightColor,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget footerText() {
    return InkWell(
      onTap: () {
        Get.offNamed(Routes.loginPage);
      },
      child: Text.rich(
        TextSpan(
          style: AppTextStyles.body1,
          children: [
            TextSpan(
              text: S.of(context).dontHaveAnAccount,
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                color: ColorHelper.secondaryColor,
              ),
            ),
            TextSpan(
              text: S.of(context).login,
              style: TextStyle(
                color: ColorHelper.secondaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
