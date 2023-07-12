import 'package:flutter/material.dart';
import 'package:meal_monkey/features/profile/widgets/Form.dart';
import 'package:meal_monkey/features/profile/widgets/view.dart';

import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(right: 129,left: 130,top: 50),
            child: ProfileComponentView(),
          ),
          FormView(),

        ]);


  }

}