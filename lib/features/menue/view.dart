import 'package:flutter/material.dart';
import 'package:meal_monkey/features/dessert/view.dart';
import 'package:meal_monkey/features/menue/item.dart';

import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/search_buttn/view.dart';
import '../../core/constant/textstyle_manager.dart';

class MenueView extends StatelessWidget {
  const MenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 50, left: 21, right: 21),
          child: SearchButton(),
        ),
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Image.asset("assets/images/side.png"),
            Column(
              children: [
                StackItemModel(
                  onpress: (){},
                  count: 120,
                  title: "Food",
                  image: "assets/images/food.png",
                ),
                StackItemModel(
                  onpress: (){},
                  count: 220,
                  title: "Beverages",
                  image: "assets/images/coffe.png",
                ),
                StackItemModel(
                  onpress: (){
                    nextTo(context,DessertView());
                  },
                  count: 155,
                  title: "Desserts",
                  image: "assets/images/dessert.png",
                ),
                StackItemModel(
                  onpress: (){},
                  count: 25,
                  title: "Promotions",
                  image: "assets/images/promotation.png",
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
