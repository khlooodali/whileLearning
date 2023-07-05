import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';

import '../../../features/home/view.dart';
import '../../../features/menue/view.dart';
import '../../../features/more/view.dart';
import '../../../features/offers/view.dart';
import '../../../features/profile/view.dart';

class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(

      actionButton: CurvedActionBar(
        onTab: (value) {
          /// perform action here
          print(value);
        },
        activeIcon: Container(
          padding: EdgeInsets.all(8),
          decoration:
              BoxDecoration(color: Palette.mainColor, shape: BoxShape.circle),
          child: Icon(
            Icons.home,
            size: 50,
            color: Colors.white,
          ),
        ),
        inActiveIcon: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Palette.placeholderColor, shape: BoxShape.circle),
          child: Icon(
            Icons.home,
            size: 50,
            color: Colors.white,
          ),
        ),
      ),
      activeColor: Palette.mainColor,
      navBarBackgroundColor: Colors.white,
      inActiveColor: Palette.placeholderColor,
      appBarItems: [
        FABBottomAppBarItem(

            activeIcon: Icon(
              Icons.window,
              color: Palette.mainColor,
            ),
            inActiveIcon: Icon(
              Icons.window,
              color: Palette.placeholderColor,
            ),
            text: 'Menu'),
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.badge,
              color: Palette.mainColor,
            ),
            inActiveIcon: Icon(
              Icons.badge,
              color: Palette.placeholderColor,
            ),
            text: 'Offers'),
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Palette.mainColor,
            ),
            inActiveIcon: Icon(
              Icons.person,
              color: Palette.placeholderColor,
            ),
            text: 'Profile'),
        FABBottomAppBarItem(
            activeIcon: Icon(
              Icons.more,
              color: Palette.mainColor,
            ),
            inActiveIcon: Icon(
              Icons.more,
              color: Palette.placeholderColor,
            ),
            text: 'More'),
      ],
      bodyItems: [
        MenueView(),
        OffersView(),
        ProfileView(),
        MoreView(),
      ],
      actionBarView: HomeView(),
    );
  }
}
