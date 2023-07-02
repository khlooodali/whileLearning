import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';

class CustomTextFiled extends StatelessWidget {
  final String? text_label;
  final TextEditingController? controller;
  final TextInputType? type;
  bool issecure = false;

  CustomTextFiled(
      {super.key,
      @required this.controller,
      @required this.text_label,
      this.issecure = false,
      @required this.type});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: issecure,
      decoration: InputDecoration(
          labelText: text_label,
          labelStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFFB6B7B7),
          ),
          filled: true,
          fillColor: Palette.textFiledColor,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Palette.textFiledColor,
              ),
              borderRadius: BorderRadius.circular(28))),
    );
  }
}
