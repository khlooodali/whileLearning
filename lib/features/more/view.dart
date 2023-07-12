import 'package:flutter/material.dart';
import 'package:meal_monkey/features/more/widgets/view.dart';

import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class MoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(

              child: ListItemView()),
        ],
      ),
    );
  }

}