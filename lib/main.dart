import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'core/constant/bottom_navigation/view.dart';

void main() {
  runApp(MonkeyMain());
}

class MonkeyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarView(),
    );
  }
}
