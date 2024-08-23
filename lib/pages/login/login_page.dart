import 'package:demo_app/apps/routers/router_name.dart';
import 'package:demo_app/pages/login/widgets/Login_or.dart';
import 'package:demo_app/pages/login/widgets/login_apple.dart';
import 'package:demo_app/pages/login/widgets/login_button.dart';
import 'package:demo_app/pages/login/widgets/login_forgot_password.dart';
import 'package:demo_app/pages/login/widgets/login_google.dart';
import 'package:demo_app/pages/login/widgets/login_sign_up.dart';
import 'package:demo_app/widgets/input_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailContronler = TextEditingController();
  TextEditingController passwordContronler = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  void submit() async {
    context.loaderOverlay.show();

    if (_formKey.currentState!.validate()) {
      await Future.delayed(const Duration(seconds: 2));
      context.loaderOverlay.hide();
      Navigator.pushReplacementNamed(context, RouterName.homePage);
    } else {
      context.loaderOverlay.hide();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        // FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 100,
                    color: const Color(0xffD2D8EC),
                  ),
                ),
                25.verticalSpace,
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //email
                      InputCustom(
                        controller: emailContronler,
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Email',
                      ),
                      14.verticalSpace,
                      //paswword
                      InputCustom(
                        controller: passwordContronler,
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      44.verticalSpace,
                      const LoginForgotPassword(),
                      25.verticalSpace,
                      LoginButton(
                        onTap: submit,
                      ),
                    ],
                  ),
                ),
                25.verticalSpace,
                const LoginGoogle(),
                25.verticalSpace,
                const LoginApple(),
                25.verticalSpace,
                const LoginOr(),
                25.verticalSpace,
                const LoginSignUp(),
                58.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
