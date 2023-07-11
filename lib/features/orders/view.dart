import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/custom_button/view.dart';
import 'package:meal_monkey/features/orders/widgets/builder/view.dart';
import 'package:meal_monkey/features/orders/widgets/last/view.dart';
import 'package:meal_monkey/features/orders/widgets/tile/view.dart';

import '../../core/constant/bottom_navigation/view.dart';
import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';
import '../checkout/view.dart';

class MyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Order",
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

      ),
      body: ListView(
        children: [
           Padding(
             padding: const EdgeInsets.only(left:21,top:55),
             child:CustomTileView(),
           ),
          Padding(
            padding: const EdgeInsets.only(top:25),
            child: SizedBox(
              height: 231,
                child: AllOrdersView()),
          ),
          Padding(
            padding: const EdgeInsets.all(21),
            child: CustomColumnView(),
          ),
       Padding(
         padding: const EdgeInsets.all(21),
         child: CustomButton(text: 'Checkout', whenTap: (){
           nextTo(context, CheckOutView());
         }, value: 28),
       )
        ],
      ),
    );
  }

}