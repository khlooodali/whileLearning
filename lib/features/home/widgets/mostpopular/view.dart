import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class AllMostView extends StatelessWidget {
  final List<MostPopularItemModel> mostlist = [
    MostPopularItemModel(
      image: "assets/images/piza2.png",
      title: "Café De Bambaa",
    ),
    MostPopularItemModel(
      image: "assets/images/burger_bella.png",
      title: "Burger by Bella",
    ),
  ];
  AllMostView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return mostlist[index];
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15,
          );
        },
        itemCount: mostlist.length);
  }
}

class MostPopularItemModel extends StatelessWidget {
  final String? image;
  final String? title;
  const MostPopularItemModel(
      {super.key, @required this.image, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              image!,
              fit: BoxFit.fill,
              height: 135,
              width: 228,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title!,
            style: getBoldStyle16(color: Palette.primaryFontColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Café",
                style: getRegularStyle10(color: Palette.placeholderColor),
              ),
              Text(
                ' . ',
                style: getBoldStyle22(color: Palette.mainColor),
              ),
              Text(
                "Western Food",
                style: getRegularStyle10(color: Palette.placeholderColor),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Palette.mainColor,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "4.9",
                style: getBoldStyle16(color: Palette.mainColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
