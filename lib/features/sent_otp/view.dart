import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';
import 'package:meal_monkey/features/newpassword/view.dart';

import '../../core/constant/custom_button/view.dart';
import '../../core/constant/pin_code/view.dart';

class SentOtpView extends StatefulWidget {
  SentOtpView({super.key});

  @override
  State<SentOtpView> createState() => _SentOtpViewState();
}

class _SentOtpViewState extends State<SentOtpView> {
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
                padding: const EdgeInsets.only(top: 65, left: 57, right: 56),
                child: Text(
                  'We have sent an OTP to\n        your Mobile',
                  style: getextraBold25(color: Palette.primaryFontColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 60, right: 56),
                child: Text(
                  'Please check your mobile number 071*****12\n             continue to reset your password',
                  style: getMeduimStyle(color: Palette.secondryFontColor),
                ),
              ),
              //otp
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
                child: PincodeView(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
                child: CustomButton(
                  text: 'Next',
                  value: 28,
                  whenTap: () {
                    nextTo(context, NewPasswordView(), isreplace: true);
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 100, left: 100, bottom: 378),
                child: Row(
                  children: [
                    Text(
                      "Didn't Receive?",
                      style: getMeduimStyle(color: Palette.secondryFontColor),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Click Here',
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
