import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/custom_button/view.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';
import 'package:meal_monkey/features/payment_detailes/widgets/addcard/view.dart';

import 'package:meal_monkey/features/payment_detailes/widgets/cardview.dart';

import '../../core/constant/bottom_navigation/view.dart';
import '../../core/constant/custom_button_with_icon/view.dart';
import '../../core/constant/custom_textfiled.dart';

class paymentView extends StatelessWidget {
  bool ison=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Payment Details",
          style: getBoldStyle22(color: Palette.primaryFontColor),
        ),
        leading: IconButton(
            onPressed: () {
              nextTo(context, BottomNavigationBarView(page: 4,),iskeep: false );
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
            padding: EdgeInsets.only(left: 21, top: 60),
            child: Text(
              'Customize your payment method',
              style: getBoldStyle16(color: Palette.primaryFontColor),
            ),
          ),
          SizedBox(
            height: 53,
          ),

          CardView(),

          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(21),
            child: Container(
              height: 60,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: Palette.mainColor,
            ),
                child: AddCardView(istextBtton: false,)),
          )
        ],
      ),
    );
  }
}
