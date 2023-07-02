import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../core/constant/custom_button/view.dart';

import '../../core/constant/custom_textfiled.dart';

class ResetPasswordView extends StatefulWidget {
  ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController email = TextEditingController();

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
                padding: const EdgeInsets.only(top: 60, left: 86, right: 85),
                child: Text(
                  'Reset Password',
                  style: getextraBold(color: Palette.primaryFontColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 66, right: 65),
                child: Text(
                  '      Please enter your email to receive a\nlink to  create a new password via email',
                  style: getMeduimStyle(color: Palette.secondryFontColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 34,
                  right: 34,
                ),
                child: CustomTextFiled(
                  type: TextInputType.emailAddress,
                  controller: email,
                  text_label: 'Email',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
                child: CustomButton(
                  text: 'Send',
                  value: 28,
                  whenTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
