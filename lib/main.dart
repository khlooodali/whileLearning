import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/features/login/view.dart';
import 'package:meal_monkey/features/more/view.dart';

import 'core/constant/bottom_navigation/view.dart';
import 'features/dessert/view.dart';
import 'features/payment_detailes/view.dart';
import 'features/splash_screen/view.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
void main() async {
  //WidgetsFlutterBinding.ensureInitialized();

  runApp(MonkeyMain());
}

class MonkeyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
