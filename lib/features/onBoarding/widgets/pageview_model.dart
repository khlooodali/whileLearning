import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class PageViewModel extends StatelessWidget {
  PageViewModel({super.key, @required this.controller});
  PageController? controller;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        OnePageModel(
            image: "assets/images/onBoarding1.png",
            subtitle:
                "   Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
            title: "Find Food You Love"),
        OnePageModel(
            image: "assets/images/onBoarding2.png",
            subtitle:
                "Fast food delivery to your home, office\n                   wherever you are",
            title: "Fast Delivery"),
        OnePageModel(
            image: "assets/images/onBoarding3.png",
            subtitle:
                "Real time tracking of your food on the app\n               once you placed the order",
            title: "Live Tracking"),
      ],
    );
  }
}

class OnePageModel extends StatelessWidget {
  String? image;
  String? title;
  String? subtitle;

  OnePageModel(
      {super.key,
      @required this.image,
      @required this.subtitle,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 100,
            right: 67,
            left: 67,
          ),
          child: Image.asset(image!),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 90,
            left: 66,
            right: 66,
          ),
          child: Text(
            title!,
            style: getextraBold(color: Palette.primaryFontColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 52,
            right: 52,
          ),
          child: Text(
            subtitle!,
            style: getMeduimStyle(color: Palette.secondryFontColor),
          ),
        ),
      ],
    );
  }
}
