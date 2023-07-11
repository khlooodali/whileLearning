import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/custom_appbar/view.dart';
import 'package:meal_monkey/core/constant/custom_button/view.dart';
import 'package:meal_monkey/features/checkout/widgets/cards/view.dart';
import 'package:meal_monkey/features/checkout/widgets/view.dart';
import 'package:meal_monkey/features/orders/view.dart';

import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';
import '../payment_detailes/widgets/addcard/view.dart';

class CheckOutView extends StatelessWidget {
  AddCardView cardView=AddCardView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Checkout",
          style: getBoldStyle22(color: Palette.primaryFontColor),
        ),
        leading: IconButton(
            onPressed: () {
              nextTo(context, MyOrderView(),iskeep: false);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF4A4B4D),
            )),

      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 21, top: 60,right: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Address',
                  style: getMeduimStyle(color: Palette.secondryFontColor),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '653 Nostrand Ave.,\nBrooklyn, NY 11216',
                      style: getBoldStyle16(color: Palette.primaryFontColor),
                    ),
                    Text(
                      'Change',
                      style: getBoldStyle16(color: Palette.mainColor),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment method',
                      style: getMeduimStyle(color: Palette.secondryFontColor),
                    ),
                    AddCardView(istextBtton: true),

                  ],
                ),
                AvailableCardsView(title: 'Cash on delivery',isChecked: false,),
                SizedBox(height: 5,),
                AvailableCardsView(title: '**** **** **** 2187',isChecked: false,),
                SizedBox(height: 5,),
                AvailableCardsView(title: 'johndoe@email.com',isChecked: false,),
                SizedBox(height: 30,),
                ThanksBottomSheetView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

}