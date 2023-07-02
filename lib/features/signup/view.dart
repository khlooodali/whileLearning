import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../core/constant/custom_button/view.dart';

import '../../core/constant/custom_textfiled.dart';

class SignUpView extends StatefulWidget {
  SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  TextEditingController password = TextEditingController();
  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 136, right: 135),
              child: Text(
                'Sign Up',
                style: getextraBold(color: Palette.primaryFontColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 112, right: 111),
              child: Text(
                'Add your details to sign up',
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
                type: TextInputType.name,
                controller: name,
                text_label: 'Name',
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
                text_label: ' Email',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 34,
                right: 34,
              ),
              child: CustomTextFiled(
                type: TextInputType.number,
                controller: phone,
                text_label: 'Mobile No',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 34,
                right: 34,
              ),
              child: CustomTextFiled(
                type: TextInputType.streetAddress,
                controller: address,
                text_label: 'Address',
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
              padding: EdgeInsets.only(
                top: 15,
                left: 34,
                right: 34,
              ),
              child: CustomTextFiled(
                type: TextInputType.visiblePassword,
                issecure: true,
                controller: confirmpass,
                text_label: 'Confirm Password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
              child: CustomButton(
                text: 'Sign Up',
                value: 28,
                whenTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 88, left: 80, top: 15),
              child: Row(
                children: [
                  Text(
                    "Already have an Account?",
                    style: getMeduimStyle(color: Palette.secondryFontColor),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: getBoldStyle16(color: Palette.mainColor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
