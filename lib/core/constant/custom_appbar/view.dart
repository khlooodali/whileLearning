import 'package:flutter/material.dart';

import '../palette.dart';
import '../textstyle_manager.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        title!,
        style: getBoldStyle22(color: Palette.primaryFontColor),
      ),
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF4A4B4D),
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xFF4A4B4D),
            )),
      ],
    );
  }
}
