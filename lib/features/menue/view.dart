import 'package:flutter/material.dart';
import 'package:meal_monkey/features/menue/item.dart';

import '../../core/constant/palette.dart';
import '../../core/constant/search_buttn/view.dart';
import '../../core/constant/textstyle_manager.dart';

class MenueView extends StatelessWidget {
  const MenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 53, left: 21, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Menu',
                  style: getextraBold(color: Palette.primaryFontColor),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
              ],
            ),
          ),
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
                    count: 120,
                    title: "Food",
                    image: "assets/images/food.png",
                  ),
                  StackItemModel(
                    count: 220,
                    title: "Beverages",
                    image: "assets/images/coffe.png",
                  ),
                  StackItemModel(
                    count: 155,
                    title: "Desserts",
                    image: "assets/images/dessert.png",
                  ),
                  StackItemModel(
                    count: 25,
                    title: "Promotions",
                    image: "assets/images/promotation.png",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
