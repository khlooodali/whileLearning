import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class AllPopular extends StatelessWidget {
  List<PopularItemModel> popularlist = [
    PopularItemModel(
        rate: 4.9,
        firstsubtitle: "(124 ratings) Café",
        secondsubtitle: "Western Food",
        image: "assets/images/pizza.png",
        title: "Minute by tuk tuk"),
    PopularItemModel(
        rate: 4.9,
        firstsubtitle: "(124 ratings) Café",
        secondsubtitle: "Western Food",
        image: "assets/images/westren_food.png",
        title: "Café de Noir"),
    PopularItemModel(
        rate: 4.9,
        firstsubtitle: "(124 ratings) Café",
        secondsubtitle: "Western Food",
        image: "assets/images/bakes.png",
        title: "Bakes by Tella"),
  ];
  AllPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return popularlist[index];
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15,
          );
        },
        itemCount: popularlist.length);
  }
}

class PopularItemModel extends StatelessWidget {
  final String? image;
  final String? title;
  final String? firstsubtitle;
  final String? secondsubtitle;
  final double? rate;

  const PopularItemModel(
      {super.key,
      @required this.rate,
      @required this.image,
      @required this.firstsubtitle,
      @required this.secondsubtitle,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image!,
            height: 193,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 15),
            child: Text(
              title!,
              style: getBoldStyle16(color: Palette.primaryFontColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Palette.mainColor,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "$rate",
                  style: getBoldStyle16(color: Palette.mainColor),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  firstsubtitle!,
                  style: getRegularStyle10(color: Palette.placeholderColor),
                ),
                Text(
                  ' . ',
                  style: getBoldStyle22(color: Palette.mainColor),
                ),
                Text(
                  secondsubtitle!,
                  style: getRegularStyle10(color: Palette.placeholderColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
