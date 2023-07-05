import 'package:flutter/material.dart';

import '../../core/constant/palette.dart';
import '../../core/constant/textstyle_manager.dart';

class StackItemModel extends StatelessWidget {
  final String? image;
  final String? title;
  final int? count;
  StackItemModel(
      {super.key,
      @required this.count,
      @required this.image,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 53, right: 36, top: 25),
          child: Container(
            width: 280,
            height: 87,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.only(left: 56, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: getBoldStyle22(color: Palette.primaryFontColor),
                      ),
                      Text(
                        "$count Item",
                        style:
                            getRegularStyle10(color: Palette.placeholderColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21, top: 39),
          child: Image.asset(
            image!,
            fit: BoxFit.fill,
            width: 70,
            height: 70,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 321, right: 21, top: 57),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 33,
              height: 33,
              child: Image.asset("assets/images/right_arrow.png"),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
          ),
        ),
      ],
    );
  }
}
