import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/bottom_navigation/view.dart';
import 'package:meal_monkey/features/menue/view.dart';
import 'package:meal_monkey/features/payment_detailes/view.dart';
import 'package:meal_monkey/features/payment_detailes/widgets/addcard/view.dart';

import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "About Us",
          style: getBoldStyle22(color: Palette.primaryFontColor),
        ),
        leading: IconButton(
            onPressed: () {
              nextTo(context, BottomNavigationBarView(index: 3,),iskeep: false );
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
      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 22,right: 22),
        child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(

                leading: CircleAvatar(radius: 4,
                  backgroundColor: Palette.mainColor,),
                title: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

                  ,style: getRegularStyle15(color: Palette.secondryFontColor),),

              );
            }, separatorBuilder:(context,index){ return SizedBox(height: 5,);} ,
            itemCount: 3),
      ),
    );
  }

}