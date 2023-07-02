import 'package:flutter/material.dart';
import 'package:meal_monkey/features/onBoarding/widgets/custom_indicator.dart';
import 'package:meal_monkey/features/onBoarding/widgets/pageview_model.dart';

import '../../core/constant/custom_button/view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  int currentpage = 0;

  @override
  void initState() {
    controller = PageController(initialPage: currentpage)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageViewModel(
            controller: controller,
          ),
          Positioned(
              top: 438,
              left: 170,
              right: 151,
              child: CustomIndicator(
                index: (controller.hasClients ? controller.page : 0)?.toInt(),
              )),
          Positioned(
              top: 645,
              left: 34,
              right: 34,
              child: CustomButton(
                text: controller.hasClients
                    ? controller.page == 2
                        ? "Get Started"
                        : "Next"
                    : "",
                whenTap: () {
                  if (controller.page! < 2) {
                    controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  } else {
                    //navigation to login
                  }
                },
                value: 28,
              ))
        ],
      ),
    );
  }
}
