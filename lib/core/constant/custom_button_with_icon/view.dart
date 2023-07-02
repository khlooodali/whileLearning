import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/size_config.dart';

import '../textstyle_manager.dart';

class CustomIconButton extends StatelessWidget {
  final String? text;
  final void Function()? whenTap;
  final double? value;
  final Color? color;
  final String? image;
  const CustomIconButton(
      {super.key,
      @required this.text,
      @required this.image,
      @required this.whenTap,
      @required this.value,
      @required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTap,
      child: Container(
          width: SizeConfig.screenWidth,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(value!),
            color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image!),
              SizedBox(
                width: 15,
              ),
              Text(
                text!,
                style: getLightStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
