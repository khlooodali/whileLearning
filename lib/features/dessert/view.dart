import 'package:flutter/material.dart';
import 'package:meal_monkey/features/dessert/widgets/customitem/view.dart';
import 'package:meal_monkey/features/menue/view.dart';

import '../../core/constant/bottom_navigation/view.dart';
import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/search_buttn/view.dart';
import '../../core/constant/textstyle_manager.dart';

class DessertView extends StatelessWidget {
  List<OneItemView> list=[
    OneItemView('French Apple Pie','Minute by tuk tuk    Desserts',"assets/images/fooodd.png"),
    OneItemView('Dark Chocolate Cake','Cakes by Tella    Desserts',"assets/images/fooodd1.png"),
    OneItemView('Street Shake','Café Racer    Desserts',"assets/images/fooodd2.png"),
    OneItemView('Fudgy Chewy Brownies','Minute by tuk tuk    Desserts',"assets/images/fooodd3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Desserts",
          style: getBoldStyle22(color: Palette.primaryFontColor),
        ),
        leading: IconButton(
            onPressed: () {
              nextTo(context, BottomNavigationBarView(page: 0,) );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF4A4B4D),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFF4A4B4D),
              )),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21,right:21,top: 70),
            child: SearchButton(),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return list[index];
                }, separatorBuilder:(context,index){
              return SizedBox(height: 4,);
            }, itemCount: list.length)
          )

        ],
      ),
    );
  }

}