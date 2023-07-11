import 'package:flutter/material.dart';

import '../../core/constant/bottom_navigation/view.dart';
import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Notifications",
          style: getBoldStyle22(color: Palette.primaryFontColor),
        ),
        leading: IconButton(
            onPressed: () {
              nextTo(context, BottomNavigationBarView(index: 3,) ,iskeep: false);
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
      body: ListView.separated(
          itemBuilder: (context,index){
           return ListTile(

             leading: CircleAvatar(radius: 5,
             backgroundColor: Palette.mainColor,),
             title: Text('Your orders has been picked up',
             style: getsemiBold(color: Palette.secondryFontColor),),
             subtitle: Text('Now',
             style: getRegularStyle10(color: Palette.placeholderColor),),
           );
          }, separatorBuilder:(context,index){ return SizedBox(height: 3,);} ,
          itemCount: 8),
    );
  }

}