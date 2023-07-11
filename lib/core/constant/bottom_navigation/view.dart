import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../../features/home/view.dart';
import '../../../features/menue/view.dart';
import '../../../features/more/view.dart';
import '../../../features/offers/view.dart';
import '../../../features/profile/view.dart';

class BottomNavigationBarView extends StatefulWidget {


   BottomNavigationBarView({super.key,@required index});

  @override
  State<BottomNavigationBarView> createState() => _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  late int index =_selectedPage;
  static int _selectedPage = 0;
  NotchBottomBarController _controller=NotchBottomBarController();
  PageController _pageController=PageController();

  final _pageOptions = [
    MenueView(),
    OffersView(),

    ProfileView(),
    MoreView(),


  ];




  @override
  Widget build(BuildContext context) {
    bool isSelected=false;
     final _bottomNav = BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6,
      clipBehavior: Clip.antiAlias,
      child: BottomNavigationBar(
        selectedItemColor: Palette.mainColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedPage,
        onTap: (int index) {
         setState(() {

            _selectedPage = index;
          });
      },
       items: [
          BottomNavigationBarItem(
      icon: Icon(Icons.window),label: "Menu" ),
          BottomNavigationBarItem(
               icon: Icon(Icons.add_shopping_cart), label: "Offers"),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),label: "Profile"),
           BottomNavigationBarItem(
              icon: Icon(Icons.more), label: "More"),
        ],
      ),
     );

     final _fab = FloatingActionButton(

       child: Icon(Icons.home),
       backgroundColor:isSelected?Palette.mainColor:Palette.placeholderColor,
      onPressed: () {
        isSelected=true;
        nextTo(context, HomeView());

       },
     );
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: _bottomNav,
      floatingActionButton: _fab,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );}
    //      bottomNavigationBar: AnimatedNotchBottomBar(
    //
    //
    //        removeMargins: true,
    //        notchBottomBarController: _controller,
    //        durationInMilliSeconds: 300,
    //        bottomBarItems: [
    //          const BottomBarItem(
    //            inActiveItem: Icon(
    //              Icons.window,
    //              color: Palette.placeholderColor,
    //            ),
    //            activeItem: Icon(
    //              Icons.window,
    //              color: Palette.mainColor,
    //            ),
    //            itemLabel: 'Menu',
    //          ),
    //
    //
    //          const BottomBarItem(
    //            inActiveItem: Icon(
    //              Icons.shopping_basket_sharp,
    //              color: Palette.placeholderColor,
    //            ),
    //            activeItem: Icon(
    //              Icons.shopping_basket_sharp,
    //              color: Palette.mainColor,
    //            ),
    //            itemLabel: 'Offers',
    //          ),
    //          const BottomBarItem(
    //            inActiveItem: Icon(
    //              Icons.home,
    //              color: Palette.placeholderColor,
    //            ),
    //            activeItem: Icon(
    //              Icons.home,
    //              color: Palette.mainColor,
    //            ),
    //            itemLabel: 'Home',
    //          ),
    //          const BottomBarItem(
    //            inActiveItem: Icon(
    //              Icons.person,
    //              color: Palette.placeholderColor,
    //            ),
    //            activeItem: Icon(
    //              Icons.person,
    //              color: Palette.mainColor,
    //            ),
    //            itemLabel: 'Profile',
    //          ),
    //          const BottomBarItem(
    //            inActiveItem: Icon(
    //              Icons.more,
    //              color: Palette.placeholderColor,
    //            ),
    //            activeItem: Icon(
    //              Icons.more,
    //              color: Palette.mainColor,
    //            ),
    //            itemLabel: 'More',
    //          ),
    //        ],
    //        showLabel: true,
    //        itemLabelStyle: getMeduimStyle(color: Palette.placeholderColor),
    //        onTap: (index){
    //
    //          setState(() {
    //             _selectedPage=index;
    //          });
    //        },
    //        showBlurBottomBar: true,
    //        notchColor: Colors.black87,
    //        blurOpacity: 0.2,
    //        blurFilterX: 5.0,
    //        blurFilterY: 10.0,
    //      ),
    //);
    // return CurvedNavBar(
    //   actionButton: CurvedActionBar(
    //     onTab: (value) {
    //       /// perform action here
    //       print(value);
    //     },
    //     activeIcon: Container(
    //       padding: EdgeInsets.all(8),
    //       decoration:
    //           BoxDecoration(color: Palette.mainColor, shape: BoxShape.circle),
    //       child: Icon(
    //         Icons.home,
    //         size: 50,
    //         color: Colors.white,
    //       ),
    //     ),
    //     inActiveIcon: Container(
    //       padding: EdgeInsets.all(8),
    //       decoration: BoxDecoration(
    //           color: Palette.placeholderColor, shape: BoxShape.circle),
    //       child: Icon(
    //         Icons.home,
    //         size: 50,
    //         color: Colors.white,
    //       ),
    //     ),
    //   ),
    //   activeColor: Palette.mainColor,
    //   navBarBackgroundColor: Colors.white,
    //   inActiveColor: Palette.placeholderColor,
    //   appBarItems: [
    //     FABBottomAppBarItem(
    //         activeIcon: Icon(
    //           Icons.window,
    //           color: Palette.mainColor,
    //         ),
    //         inActiveIcon: Icon(
    //           Icons.window,
    //           color: Palette.placeholderColor,
    //         ),
    //         text: 'Menu'),
    //     FABBottomAppBarItem(
    //         activeIcon: Icon(
    //           Icons.badge,
    //           color: Palette.mainColor,
    //         ),
    //         inActiveIcon: Icon(
    //           Icons.badge,
    //           color: Palette.placeholderColor,
    //         ),
    //         text: 'Offers'),
    //     FABBottomAppBarItem(
    //         activeIcon: Icon(
    //           Icons.person,
    //           color: Palette.mainColor,
    //         ),
    //         inActiveIcon: Icon(
    //           Icons.person,
    //           color: Palette.placeholderColor,
    //         ),
    //         text: 'Profile'),
    //     FABBottomAppBarItem(
    //         activeIcon: Icon(
    //           Icons.more,
    //           color: Palette.mainColor,
    //         ),
    //         inActiveIcon: Icon(
    //           Icons.more,
    //           color: Palette.placeholderColor,
    //         ),
    //         text: 'More'),
    //   ],
    //   bodyItems: [
    //     MenueView(),
    //     OffersView(),
    //     ProfileView(),
    //     MoreView(),
    //   ],
    //   actionBarView: HomeView(),
    // );
  }
