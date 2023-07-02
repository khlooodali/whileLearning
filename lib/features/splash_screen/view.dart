import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Timer?timer;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/Background icons.png",
          height: MediaQuery.of(context).size.height,
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElasticInRight(
                duration: Duration(seconds: 3),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 105.1,
                  width: 103.11,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text.rich(TextSpan(children: [
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
              SizedBox(
                height: 4,
              ),
              Text(
                'Food Delivery',
                style: TextStyle(fontSize: 15, color: Color(0xff4A4B4D)),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
