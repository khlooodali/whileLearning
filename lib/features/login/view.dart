import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/bottom_navigation/view.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';
import 'package:meal_monkey/features/home/view.dart';

import 'package:meal_monkey/features/reset_password/view.dart';
import 'package:meal_monkey/features/signup/view.dart';

import '../../core/constant/custom_button/view.dart';
import '../../core/constant/custom_button_with_icon/view.dart';
import '../../core/constant/custom_textfiled.dart';
import '../onBoarding/view.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 150, right: 150),
                child: Text(
                  'Login',
                  style: getextraBold(color: Palette.primaryFontColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 112, right: 111),
                child: Text(
                  'Add your details to login',
                  style: getMeduimStyle(color: Palette.secondryFontColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 34,
                  right: 34,
                ),
                child: CustomTextFiled(
                  type: TextInputType.emailAddress,
                  controller: email,
                  text_label: 'Your Email',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 34,
                  right: 34,
                ),
                child: CustomTextFiled(
                  type: TextInputType.visiblePassword,
                  issecure: true,
                  controller: password,
                  text_label: 'Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
                child: CustomButton(
                  text: 'Login',
                  value: 28,
                  whenTap: () {
                   nextTo(context, BottomNavigationBarView(page: 2,));

                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 117, right: 116),
                child: TextButton(
                  child: Text(
                    'Forgot your password?',
                    style: getMeduimStyle(color: Palette.secondryFontColor),
                  ),
                  onPressed: () {
                    nextTo(context, ResetPasswordView());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 146, right: 145),
                child: Text(
                  'or Login With',
                  style: getMeduimStyle(color: Palette.secondryFontColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 34, right: 34),
                child: CustomIconButton(
                  image: "assets/images/facebook-letter-logo.png",
                  color: Palette.facebookColor,
                  text: 'Login with Facebook',
                  value: 28,
                  whenTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 34, right: 34),
                child: CustomIconButton(
                  image: "assets/images/google-plus-logo.png",
                  color: Palette.googleColor,
                  text: 'Login with Google',
                  value: 28,
                  whenTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 86, left: 87, top: 80),
                child: Row(
                  children: [
                    Text(
                      "Don't have an Account?",
                      style: getMeduimStyle(color: Palette.secondryFontColor),
                    ),
                    TextButton(
                        onPressed: () {
                          nextTo(context, SignUpView());
                        },
                        child: Text(
                          ' Sign Up',
                          style: getBoldStyle16(color: Palette.mainColor),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
