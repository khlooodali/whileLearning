import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Palette.mainColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17)),
                ),
                height: 382,
                width: double.infinity,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
