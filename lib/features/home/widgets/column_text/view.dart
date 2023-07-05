import 'package:flutter/material.dart';

import '../../../../core/constant/palette.dart';
import '../../../../core/constant/textstyle_manager.dart';

class Alltextview extends StatelessWidget {
  const Alltextview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 55, left: 21, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Good morning Akila!',
                style: getextraBold(color: Palette.primaryFontColor),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21, top: 40),
          child: Text(
            'Delivering to',
            style: getRegularStyle10(color: Palette.placeholderColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21, top: 18, right: 177),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Location',
                style: getBoldStyle16(color: Palette.secondryFontColor),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    width: 9.97,
                    height: 4.98,
                    child: Image.asset("assets/images/arrow.png")),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
