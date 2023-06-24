import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/size_config.dart';

class SpaceHorizontal extends StatelessWidget {
  final double? value;
  const SpaceHorizontal({super.key, @required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class Spacevertical extends StatelessWidget {
  final double? value;
  const Spacevertical({super.key, @required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
