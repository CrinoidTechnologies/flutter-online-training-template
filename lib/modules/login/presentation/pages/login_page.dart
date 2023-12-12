import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_training_template/ui/color_helper.dart';
import 'package:online_training_template/ui/routes/app_pages.dart';
import 'package:online_training_template/ui/text_styles.dart';

import '../../../../generated/l10n.dart';
import '../../../../validators/login_validator.dart';
import '../../domain/entities/login_entity.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginEntity _loginEntity;

  String _loginStatus = '';

  @override
  void initState() {
    super.initState();
    _loginEntity = LoginEntity();
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
            const Expanded(
              flex: 1,
              child: Center(),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //header text
            Text(
              S.of(context).loginAccount,
              style: AppTextStyles.headline,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              S.of(context).discoverYourSocialTryToLogin,
              style: AppTextStyles.caption,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            //logo section
            richText(24),
            SizedBox(
              height: size.height * 0.05,
            ),
            //email & password section
            emailTextField(size),
            SizedBox(
              height: size.height * 0.02,
            ),
            passwordTextField(size),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              _loginStatus.toString(),
              style: AppTextStyles.captionError,
              key: Key('txt_error'),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            //sign in button
            signInButton(size),
            SizedBox(
              height: size.height * 0.04,
            ),

            //footer section. sign up text here
            footerText(),
          ],
        ),
      ),
    );
  }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: AppTextStyles.display1,
        children: [
          TextSpan(
            text: S.of(context).login,
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
          _loginEntity.email = v;
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
          _loginEntity.password = v;
        },
      ),
    );
  }

  Widget signInButton(Size size) {
    return InkWell(
      onTap: () {
        setState(() {
          _loginStatus = LoginValidator(
                  email: _loginEntity.email, password: _loginEntity.password)
              .validate();
          if (_loginStatus == S.of(context).validationSuccessful) {
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
          S.of(context).signIn,
          style: AppTextStyles.body2FixedLightColor,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget footerText() {
    return Text.rich(
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
            text: S.of(context).signUp,
            style: TextStyle(
              color: ColorHelper.secondaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
