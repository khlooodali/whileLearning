import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

class ListItemView extends StatelessWidget{

  List<ItemView>morelist=[
    ItemView(image: 'assets/images/payment.png',title: 'Payment Details'),
    ItemView(image: 'assets/images/orders.png',title: 'My Orders'),
    ItemView(image: 'assets/images/notify.png',title: 'Notifications'),
    ItemView(image: 'assets/images/inbox.png',title: 'Inbox'),
    ItemView(image: 'assets/images/about.png',title: 'About Us'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return morelist[index];
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 5,
          );
        },
        itemCount: morelist.length);
  }


}
class ItemView extends StatelessWidget {
  final String?image;
  final String?title;
  ItemView({@ required this.image,@required this.title});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [

      Padding(
        padding: const EdgeInsets.only(right: 21,left: 21,top:63),
        child: Container(
        width: 333,
        height: 75,
        color: Palette.lightColor,

    ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30,top: 70),
        child: Row(
          children: [
            Container(width: 53,height: 53,
                decoration: BoxDecoration(
                    color: Palette.placeholderColor,
                    shape: BoxShape.circle
                ),
                child: Center(child:Image.asset(image!),)),
            SizedBox(width: 15,),
            Text(title!,
            style: getsemiBold(color: Palette.primaryFontColor),)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 85,left: 335),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: 33,
            height: 33,
            child: Center(child: Icon(Icons.arrow_forward_ios,
            color: Palette.placeholderColor,
            size: 20,)),
            decoration:
            BoxDecoration(color: Palette.lightColor, shape: BoxShape.circle),
          ),
        ),
      ),

    ],);
  }

}