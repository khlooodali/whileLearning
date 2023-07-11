import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../../../core/constant/custom_button/view.dart';
import '../../../../core/constant/custom_button_with_icon/view.dart';
import '../../../../core/constant/custom_textfiled.dart';

class AddCardView extends StatefulWidget {
   AddCardView({Key? key,@required this.istextBtton}) : super(key: key);

  bool? istextBtton=true;

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController _cardnum=TextEditingController();

  TextEditingController _securitycode=TextEditingController();

  TextEditingController _firstname=TextEditingController();

  TextEditingController _lastname=TextEditingController();
  TextEditingController _month=TextEditingController();
  TextEditingController _year=TextEditingController();

  bool ison=false;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      showModalBottomSheet(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),)),

          context: context, builder:(context){
        return SizedBox(
          height: 642,
          child: ListView(
            padding: const EdgeInsets.all(21),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add Credit/Debit Card',
                    style: getBoldStyle16(color: Palette.primaryFontColor),),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close,
                    size: 20,
                    color: Colors.black,))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: CustomTextFiled(controller:_cardnum,text_label: "Card Number",type: TextInputType.number,issecure: false),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Flexible(
                       flex:1,
                       child: Text('Expiry',
                       style:getsemiBold(color: Palette.secondryFontColor)),
                     ),
                    SizedBox(width: 5,),
                     Flexible(
                       flex: 1,
                         child: CustomTextFiled(controller:_month,text_label: "MM",type: TextInputType.number,issecure: false)),
                   SizedBox(width: 3,),
                    Flexible(
                      flex: 1,
                        child: CustomTextFiled(controller:_year,text_label: "YY",type: TextInputType.number,issecure: false)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: CustomTextFiled(controller:_securitycode ,text_label: "Security Code",type: TextInputType.number,issecure: false),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: CustomTextFiled(controller:_firstname ,text_label: "First Name",type: TextInputType.name,issecure: false),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: CustomTextFiled(controller:_lastname ,text_label: "Last Name",type: TextInputType.name,issecure: false),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('You can remove this car at anytime ',
                      style: getBoldStyle16(color: Palette.primaryFontColor),),
                    Switch(
                        activeColor: Palette.mainColor,
                        activeTrackColor:Palette.mainColor,
                        inactiveTrackColor:Palette.placeholderColor ,

                        value: ison, onChanged: (value){

                       setState(() {
                       ison=value;
                      });
                    }),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(text: '+    Add Card', whenTap: (){}, value: 28)

            ],
          ),

        );
      });
    }, child: Text(widget.istextBtton!?'+ Add Card':'Add Another Credit/Debit Card',
      style:widget.istextBtton!?getBoldStyle16(color:Palette.mainColor ):getsemiBold(color: Colors.white),));
    //    return CustomIconButton(
    //      image: "assets/images/plus.png",
    //      color: Palette.mainColor,
    //      text: " Add Another Credit/Debit Card",
    //      value: 28,
    //      whenTap: () {
    //
    //
    //        showModalBottomSheet(
    //            backgroundColor: Colors.white,
    //            shape: const RoundedRectangleBorder(
    //                borderRadius: BorderRadius.vertical(
    //                  top: Radius.circular(25.0),)),
    //
    //            context: context, builder:(context){
    //          return SizedBox(
    //            height: 642,
    //            child: ListView(
    //              padding: const EdgeInsets.all(21),
    //              children: [
    //                Row(
    //                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                  children: [
    //                    Text('Add Credit/Debit Card',
    //                      style: getBoldStyle16(color: Palette.primaryFontColor),),
    //                    IconButton(onPressed: (){
    //                      Navigator.pop(context);
    //                    }, icon: Icon(Icons.close,
    //                      size: 20,
    //                      color: Colors.black,))
    //                  ],
    //                ),
    //                Padding(
    //                  padding: const EdgeInsets.only(top:10),
    //                  child: CustomTextFiled(controller:_cardnum,text_label: "Card Number",type: TextInputType.number,issecure: false),
    //                ),
    //                Padding(
    //                  padding: const EdgeInsets.only(top:10),
    //                  child: CustomTextFiled(controller:_securitycode ,text_label: "Security Code",type: TextInputType.number,issecure: false),
    //                ),
    //                Padding(
    //                  padding: const EdgeInsets.only(top:10),
    //                  child: CustomTextFiled(controller:_firstname ,text_label: "First Name",type: TextInputType.name,issecure: false),
    //                ),
    //                Padding(
    //                  padding: const EdgeInsets.only(top:10),
    //                  child: CustomTextFiled(controller:_lastname ,text_label: "Last Name",type: TextInputType.name,issecure: false),
    //                ),
    //                Padding(
    //                  padding: const EdgeInsets.only(top: 15),
    //                  child: Row(
    //                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                    children: [
    //                      Text('You can remove this car at anytime ',
    //                        style: getBoldStyle16(color: Palette.primaryFontColor),),
    //                      Switch(
    //                        activeColor: Palette.mainColor,
    //                          activeTrackColor:Palette.mainColor,
    //                          inactiveTrackColor:Palette.placeholderColor ,
    //
    //                          value: ison, onChanged: (value){
    //
    //                        setState(() {
    //                          ison=value;
    //                        });
    //                      }),
    //                    ],
    //                  ),
    //                ),
    //                SizedBox(height: 20,),
    //                CustomButton(text: '+    Add Card', whenTap: (){}, value: 28)
    //
    //              ],
    //            ),
    //
    //          );
    //        });
    //      },
    // );
  }
}






