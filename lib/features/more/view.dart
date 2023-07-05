import 'package:flutter/material.dart';
import 'package:meal_monkey/features/more/widgets/view.dart';

import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class MoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 53, left: 21, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'More',
                    style: getextraBold(color: Palette.primaryFontColor),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
                ],
              ),
            ),
            SizedBox(

                child: ListItemView()),
          ],
        ),
      ),
    );
  }

}