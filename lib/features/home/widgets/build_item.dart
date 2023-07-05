import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class AllItems extends StatelessWidget {
  final List<BuildOneItemModel> allitems = [
    BuildOneItemModel(
      image: "assets/images/offers.png",
      text: "Offers",
    ),
    BuildOneItemModel(
      image: "assets/images/Lankan.png",
      text: "Sri Lankan",
    ),
    BuildOneItemModel(
      image: "assets/images/indian.png",
      text: "Indian",
    ),
    BuildOneItemModel(
      image: "assets/images/italian.png",
      text: "Italian",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 25,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return allitems[index];
      },
      itemCount: allitems.length,
    );
  }
}

class BuildOneItemModel extends StatelessWidget {
  final String? image;
  final String? text;
  BuildOneItemModel({super.key, @required this.image, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      width: 88,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image!,
              fit: BoxFit.fill,
              width: 88,
              height: 88,
            ),
          ),
          Text(
            text!,
            style: getBoldStyle16(color: Palette.primaryFontColor),
          ),
        ],
      ),
    );
  }
}
