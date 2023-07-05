import 'package:flutter/material.dart';

import '../../../../core/constant/palette.dart';
import '../../../../core/constant/textstyle_manager.dart';

class AllResentView extends StatelessWidget {
  final List<ResentItemModel> resentlist = [
    ResentItemModel(
      image: "assets/images/piza_josh.png",
      title: "Café De Bambaa",
    ),
    ResentItemModel(
      image: "assets/images/brita.png",
      title: "Burger by Bella",
    ),
    ResentItemModel(
      image: "assets/images/piza_rush.png",
      title: "Burger by Bella",
    ),
  ];
  AllResentView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return resentlist[index];
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 1,
          );
        },
        itemCount: resentlist.length);
  }
}

class ResentItemModel extends StatelessWidget {
  final String? image;
  final String? title;
  ResentItemModel({super.key, @required this.image, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292,
      height: 110,
      child: Row(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 21, right: 62, top: 30, bottom: 30),
            child: Container(
              width: 70,
              child: Image.asset(
                image!,
                fit: BoxFit.fill,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  title!,
                  style: getBoldStyle16(color: Palette.primaryFontColor),
                ),
                Row(
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
                  ],
                ),
                Row(
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
                      "4.9",
                      style: getBoldStyle16(color: Palette.mainColor),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(124 Ratings)",
                      style: getRegularStyle10(color: Palette.placeholderColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
