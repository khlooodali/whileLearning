import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';
import 'package:meal_monkey/features/login/view.dart';
import 'package:meal_monkey/features/signup/view.dart';

import '../../core/constant/custom_button/view.dart';
import '../../core/constant/palette.dart';

class GetStartedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/shape.png",
                width: double.infinity,
                height: 406,
                fit: BoxFit.fill,
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 180,
                child: Image.asset("assets/images/logo.png"),
              ),
              Positioned(
                top: 433,
                left: 79,
                right: 79,
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Meal ',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Palette.mainColor,
                    ),
                  ),
                  TextSpan(
                    text: 'Monkey',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A4B4D),
                    ),
                  ),
                ])),
              ),
              Positioned(
                top: 480,
                left: 133,
                right: 142,
                child: Text(
                  'FOOD DELIVERY',
                  style: getRegularStyle10(color: Palette.primaryFontColor),
                ),
              ),
              Positioned(
                  top: 543,
                  right: 52,
                  left: 52,
                  child: Text(
                    '   Discover the best foods from over 1,000\n restaurants and fast delivery to your doorstep',
                    style: getMeduimStyle(color: Palette.secondryFontColor),
                  )),
              Positioned(
                bottom: 119,
                right: 34,
                left: 34,
                child: CustomButton(
                  value: 28,
                  text: 'Login',
                  whenTap: () {
                    nextTo(context, LoginView(), iskeep: false);
                  },
                ),
              ),
              Positioned(
                  bottom: 43,
                  right: 34,
                  left: 34,
                  child: GestureDetector(
                    onTap: () {
                      nextTo(context, SignUpView(), iskeep: false);
                    },
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Palette.mainColor)),
                      child: Center(
                        child: Text(
                          'Create an Account',
                          style: getsemiBold(color: Palette.mainColor),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
