
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../core/constant/custom_button/view.dart';
import '../home/widgets/popular_item/view.dart';

class OffersView extends StatelessWidget{

  List<PopularItemModel> popularlist = [

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
        image: "assets/images/food_offer.png",
        title: "Isso"),

    PopularItemModel(
        rate: 4.9,
        firstsubtitle: "(124 ratings) Café",
        secondsubtitle: "Western Food",
        image: "assets/images/coffe_offer.png",
        title: "Cafe Beans"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(right:104 ,left: 21,top: 30),
            child: Text('Find discounts, Offers special meals and more!',
                overflow: TextOverflow.ellipsis,
                style:getMeduimStyle(color: Palette.secondryFontColor)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22,right: 197,top: 30),
            child: CustomButton(text: "Check Offers",whenTap: (){},value: 28,height: 29),
          ),
          SizedBox(height: 10,),
          ListView.separated(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return popularlist[index];
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 5,
                );
              },
              itemCount: popularlist.length)


        ],
      ),
    );
  }}