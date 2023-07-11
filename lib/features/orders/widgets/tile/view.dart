import 'package:flutter/material.dart';

import '../../../../core/constant/palette.dart';
import '../../../../core/constant/textstyle_manager.dart';

class CustomTileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title:  Text('King Burgers',style: getBoldStyle16(color: Palette.primaryFontColor),),
      subtitle: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Icon(Icons.star,
                  size:20,
                  color:Palette.mainColor),
              Text('(124 ratings)', style: getRegularStyle15(color: Palette.placeholderColor),),
            ],
          ),
          Text(' Burger . Western Food',
            style: getRegularStyle15(color: Palette.placeholderColor),),
          Row(
            children: [
              Icon(Icons.location_on,
                  size:20,
                  color:Palette.mainColor),
              Text('No 03, 4th Lane, Newyork', style: getRegularStyle15(color: Palette.placeholderColor),),
            ],
          ),


        ],),
      leading: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14)
        ),
        child: Image.asset("assets/images/checkburgr.png",
          height: 80,
          width: 80,
          fit: BoxFit.fill,),
      ),
    );
  }

}