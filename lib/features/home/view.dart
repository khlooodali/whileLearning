import 'package:flutter/material.dart';

import 'package:meal_monkey/features/home/widgets/build_item.dart';
import 'package:meal_monkey/features/home/widgets/column_text/view.dart';
import 'package:meal_monkey/features/home/widgets/header_view.dart';
import 'package:meal_monkey/features/home/widgets/mostpopular/view.dart';
import 'package:meal_monkey/features/home/widgets/popular_item/view.dart';
import 'package:meal_monkey/features/home/widgets/resentitems/view.dart';
import 'package:meal_monkey/core/constant/search_buttn/view.dart';

import '../../core/constant/bottom_navigation/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Alltextview(),
        Padding(
          padding: EdgeInsets.only(top: 50, right: 21, left: 21),
          child: SearchButton(),
        ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Container(
              height: 120, width: double.infinity, child: AllItems()),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 17, right: 6, top: 50),
          child: HeaderView(title: "Popular Restaurents"),
        ),
        AllPopular(),
        Padding(
          padding: const EdgeInsets.only(left: 21, right: 6, top: 30),
          child: HeaderView(title: "Most Popular"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21, top: 15),
          child: SizedBox(
              width: double.infinity, height: 200, child: AllMostView()),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21, right: 6, top: 30),
          child: HeaderView(title: "Recent Items"),
        ),
        AllResentView(),
      ],
    )

    ;
  }
}
