import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';
import 'package:meal_monkey/features/home/view.dart';

import '../../../core/constant/custom_button/view.dart';

class ThanksBottomSheetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomButton(text: 'Send Order', whenTap: (){
      showModalBottomSheet(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),)),
          context: context, builder:(context){
            return SizedBox(
              height: 700,
              child: ListView(

                children: [
                  Align(alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close,
                    size: 20,
                    color: Colors.black,)),),
                Center(child: Column(
                  children: [
                    Image.asset('assets/images/thanks.png'),
                  SizedBox(height: 5,),
                    Text('Thank You!',
                    style: getBoldStyle22(color: Palette.primaryFontColor),),
                    SizedBox(height: 3,),
                    Text('for your order',
                      style: getBoldStyle16(color: Palette.primaryFontColor),)
                  ],
                )),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 21,right: 21),
                    child: Text('Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order',
                    style: getRegularStyle15(color: Palette.placeholderColor),
                    maxLines: 2,),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 21,right: 21),
                    child: Center(
                      child: Column(
                        children: [
                          CustomButton(text: 'Track My Order',value: 28,
                          height: 60,whenTap: (){}),
                          SizedBox(height: 15,),
                          TextButton(onPressed: (){
                            nextTo(context, HomeView(),iskeep: false);
                          },
                              child: Text('Back To Home',style: getBoldStyle16(color: Palette.primaryFontColor),))

                        ],
                      ),
                    ),
                  ),

                ],
              ),

            );
      } );


    }, value: 28);
  }

}