import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/size_config.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final void Function()? whenTap;
  final double? value;
  const CustomButton(
      {super.key,
      @required this.text,
      @required this.whenTap,
      @required this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTap,
      child: Container(
          width: SizeConfig.screenWidth,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(value!),
            color: Palette.mainColor,
          ),
          child: Center(
            child: Text(
              text!,
              style: getLightStyle(
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
