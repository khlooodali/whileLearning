
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/core/constant/navigation/nextpage.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';

import '../../../features/home/view.dart';
import '../../../features/menue/view.dart';
import '../../../features/more/view.dart';
import '../../../features/offers/view.dart';
import '../../../features/profile/view.dart';

class BottomNavigationBarView extends StatefulWidget {
final int page=2;

   BottomNavigationBarView({super.key, required page});

  @override
  State<BottomNavigationBarView> createState() => _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {

  static int _selectedPage = 2;


  final _pageOptions = [
    MenueView(),
    OffersView(),
    HomeView(),
    ProfileView(),
    MoreView(),


  ];
  final _titlelist=[
    "Menu",
    "Latest Offers",
    "Good morning Akila!",
    "Profile",
    "More"
  ];
@override
  void initState() {
   widget.page!=_selectedPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    final _bottomNav = BottomAppBar(
      shape: CircularNotchedRectangle(),
      padding: const EdgeInsets.only(top: 10),
      notchMargin: 10,
      //clipBehavior: Clip.antiAlias,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           NavItem(
             isSelected: _selectedPage == 0,
             image: "menu",
             title: "Menu",
             onTap: () {
               _selectedPage = 0;
               setState(() {});
             },
           ),
           NavItem(
             isSelected: _selectedPage == 1,
             image: "offers",
             title: "Offers",
             onTap: () {
               _selectedPage = 1;
               setState(() {});
             },
           ),
           Spacer(),
           NavItem(
             isSelected: _selectedPage == 3,
             image: "profile",
             title: "Profile",
             onTap: () {
               _selectedPage = 3;
               setState(() {});
             },
           ),
           NavItem(
             isSelected: _selectedPage == 4,
             image: "more",
             title: "More",
             onTap: () {
               _selectedPage = 4;
               setState(() {});
             },
           ),
         ],
       ),

    );

    final _fab = FloatingActionButton(

      child: Icon(Icons.home,
      color: Colors.white),
      backgroundColor: _selectedPage==2?Palette.mainColor:Palette.mainColor,
      onPressed: () {
        _selectedPage=2;
        setState(() {

        });
      },
    );
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        title: Text(
          _titlelist[_selectedPage],
          style: getBoldStyle22(color: Palette.primaryFontColor),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/cart.svg',color: Color(0xFF4A4B4D),),

                ),
          ),
        ],
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: _bottomNav,
      floatingActionButton: _fab,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}

class NavItem extends StatelessWidget {
  final String title, image;
  final VoidCallback onTap;
  final bool isSelected;
  const NavItem({Key? key, required this.title, required this.image, required this.onTap, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color:Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
           SvgPicture.asset("assets/icons/$image.svg",color: isSelected?Palette.mainColor:Palette.placeholderColor),
              SizedBox(height: 6,),
              Text(title,style: getRegularStyle15(color: isSelected?Palette.mainColor:Palette.placeholderColor),)
            ],
          ),
        ),
      ),
    );
  }
}
