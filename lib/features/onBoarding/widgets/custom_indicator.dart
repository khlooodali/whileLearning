import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/core/constant/palette.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.index});
  final int? index;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        position: index!,
        //reversed: true,
        decorator: DotsDecorator(
            //color: Colors.transparent,
            activeColor: Palette.mainColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Palette.indicatorColor),
              borderRadius: BorderRadius.circular(5),
            )),
        dotsCount: 3);
  }
}
