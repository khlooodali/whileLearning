import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class CustomColumnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery Instrusctions',
            style:getBoldStyle16(color: Palette.primaryFontColor)),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add,
                size: 20,
                color:Palette.mainColor ,)),
                Text('Add Notes',style: getMeduimStyle(color: Palette.mainColor),),
              ],
            ),
          ],),
       Divider(


       ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sub Total',
                style:getBoldStyle16(color: Palette.primaryFontColor)),
            Text('68',style: getMeduimStyle(color: Palette.mainColor),),
          ],),
        Divider(


        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery Cost',
                style:getBoldStyle16(color: Palette.primaryFontColor)),
            Text('2',style: getMeduimStyle(color: Palette.mainColor),),
          ],),
        Divider(


        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',
                style:getBoldStyle16(color: Palette.primaryFontColor)),
            Text('70',style: getMeduimStyle(color: Palette.mainColor),),
          ],),

      ],

    );
  }

}