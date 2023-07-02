import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/features/login/view.dart';
import 'package:meal_monkey/features/onBoarding/view.dart';
import 'package:meal_monkey/features/sent_otp/view.dart';
import 'package:meal_monkey/features/signup/view.dart';

import 'features/getstarted/view.dart';
import 'features/newpassword/view.dart';
import 'features/reset_password/view.dart';
import 'features/splash_screen/view.dart';

void main() {
  runApp(MonkeyMain());
}

class MonkeyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResetPasswordView(),
    );
  }
}
