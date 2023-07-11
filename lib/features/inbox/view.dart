import 'package:flutter/material.dart';

import '../../core/constant/bottom_navigation/view.dart';
import '../../core/constant/navigation/nextpage.dart';
import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class InBoxView extends StatefulWidget {

  @override
  State<InBoxView> createState() => _InBoxViewState();
}

class _InBoxViewState extends State<InBoxView> {
  bool isstar=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Inbox",
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
        padding: const EdgeInsets.only(top: 120),
        child: ListView.separated(
            itemBuilder: (context,index){
              return ListTile(
                isThreeLine: true,
                leading: CircleAvatar(radius: 5,
                  backgroundColor: Palette.mainColor,),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('MealMonkey Promotions',
                      style: getsemiBold(color: Palette.secondryFontColor),),
                    Text('6th July',
                    style:getRegularStyle10(color: Palette.placeholderColor ,)),
                  ],
                ),

                subtitle: Column(
                  children: [
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                      style: getRegularStyle10(color: Palette.placeholderColor),
                    overflow:TextOverflow.ellipsis,),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){
                        isstar=!isstar;
                        setState(() {

                        });}, icon: Icon(Icons.star_border_purple500_sharp,
                        size: 20,
                        color: isstar?Palette.mainColor:Palette.secondryFontColor,)),
                    ),
                  ],
                ),
              );
            }, separatorBuilder:(context,index){ return SizedBox(height: 3,);} ,
            itemCount: 6),
      ),
    );
  }
}