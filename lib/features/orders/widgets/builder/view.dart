import 'package:flutter/material.dart';

import '../../../../core/constant/palette.dart';
import '../../../../core/constant/textstyle_manager.dart';

class AllOrdersView extends StatelessWidget {
  List<OrderItem>allorderslist=[
    OrderItem(name: "Beef Burger x1",price: 16),
    OrderItem(name: "Classic Burger x1",price: 14),
    OrderItem(name: "Cheese Chicken Burger x1",price: 17),
    OrderItem(name: "Chicken Legs Basket x1",price: 15),
    OrderItem(name: "French Fries Large x1",price: 6),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index){
          return allorderslist[index];
        }, separatorBuilder:(context,index){ return SizedBox();} ,
        itemCount:allorderslist.length );
  }

}
class OrderItem extends StatelessWidget {
  String? name;
  int?price;
   OrderItem({Key? key,
   @ required this.name,@required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color:Palette.lightColor,
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name!,
              style: getMeduimStyle(color: Palette.primaryFontColor),),
            Text(price!.toString(),
                style:getBoldStyle16(color: Palette.primaryFontColor ,)),
          ],
        ),


      ),
    ); ;
  }
}
