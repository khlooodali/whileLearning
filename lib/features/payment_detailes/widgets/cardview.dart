
import 'package:flutter/material.dart';

import '../../../core/constant/palette.dart';
import '../../../core/constant/textstyle_manager.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 193,
      child: Card(
        elevation: 20,
        shadowColor: Palette.secondryFontColor,
        child: Center(
          child: Container(
            width: 284.5,
            height: 120,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cash/Card on delivery',
                      style:
                      getLightStyle(color: Palette.primaryFontColor),
                    ),
                    Icon(
                      Icons.check,
                      size: 20,
                      color: Palette.mainColor,
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 53,
                        height: 31,
                        child: Image.asset("assets/images/visa.png")),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            backgroundColor: Colors.white,
                            side: BorderSide(
                              color: Palette.mainColor,
                            )),
                        onPressed: () {},
                        child: Center(
                            child: Text(
                              'Delete Card',
                              style: getBoldStyle16(color: Palette.mainColor),
                            )))
                  ],
                ),
                Divider(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Other Methods',
                    style: getLightStyle(color: Palette.primaryFontColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
