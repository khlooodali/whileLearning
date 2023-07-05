import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class HeaderView extends StatelessWidget {
  final String? title;
  HeaderView({super.key, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: getextraBold25(color: Palette.primaryFontColor),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'View all',
              style: getMeduimStyle(color: Palette.mainColor),
            )),
      ],
    );
  }
}
