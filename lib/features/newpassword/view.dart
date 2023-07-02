import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../core/constant/custom_button/view.dart';

import '../../core/constant/custom_textfiled.dart';

class NewPasswordView extends StatefulWidget {
  NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController password = TextEditingController();

  TextEditingController confirmpassword = TextEditingController();
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
                padding: const EdgeInsets.only(top: 60, left: 92, right: 91),
                child: Text(
                  'New Password',
                  style: getextraBold(color: Palette.primaryFontColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 66, right: 65),
                child: Text(
                  '      Please enter your email to receive a \nlink to  create a new password via email',
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
                  type: TextInputType.visiblePassword,
                  issecure: true,
                  controller: password,
                  text_label: 'Password',
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
                  controller: confirmpassword,
                  text_label: 'Confirm Password',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
                child: CustomButton(
                  text: 'Next',
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
