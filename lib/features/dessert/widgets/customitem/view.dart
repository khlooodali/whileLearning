import 'package:flutter/material.dart';

import '../../../../core/constant/palette.dart';
import '../../../../core/constant/textstyle_manager.dart';

class OneItemView extends StatelessWidget {
  String? title;
  String? subtitle;
  String? image;
  OneItemView(this.title, this.subtitle, this.image);
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image!,
          fit: BoxFit.fill,
          height: 193,
          width: double.infinity,),

        Padding(
          padding: const EdgeInsets.only(top:126,left: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title!,
                style: getBoldStyle16(color:Colors.white),),
              Row(
                children: [
                  Icon(Icons.star,
                    color: Palette.mainColor,
                    size: 15,),
                  Text('4.9',
                    style: getRegularStyle15(color: Palette.mainColor),),
                  SizedBox(width: 5,),
                  Text(subtitle!,
                    style: getRegularStyle15(color:Colors.white),),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }


}