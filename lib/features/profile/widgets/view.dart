

import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class ProfileComponentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
               Container(
                 width: 102,
                 height: 102,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   boxShadow: [

      ],
                 ),
                 child: Stack(
                   children: [
                     Image.asset("assets/images/user.png"),
                     Padding(
                       padding: const EdgeInsets.only(top:70),
                       child: Center(
                         child: Icon(Icons.camera_alt,
                           size: 25,
                           color: Palette.secondryFontColor,),
                       ),
                     ),



                   ],
                 ),
               ),
        SizedBox(height: 10,),
                  Row(children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,
                    color: Palette.mainColor,
                    size: 25,)),
                    SizedBox(width: 3,),
                    Text('Edit Profile',
                    style: getMeduimStyle(color: Palette.mainColor),),
                  ],),
        Text('Hi there Emilia!',
          style: getBoldStyle16(color: Palette.primaryFontColor),),
        Text('Sign Out',
          style: getMeduimStyle(color: Palette.placeholderColor),),

      ],
    );
  }

}