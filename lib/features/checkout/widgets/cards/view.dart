import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/palette.dart';

class AvailableCardsView extends StatefulWidget {
  final String? title;

  final bool? isChecked;
   AvailableCardsView({super.key,@ required this.title,@ required this.isChecked,
  });

  @override
  State<AvailableCardsView> createState() => _AvailableCardsViewState();
}

class _AvailableCardsViewState extends State<AvailableCardsView> {
  bool? _isChecked;
  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.lightColor,
      child: ListTile(

        title: Text(widget.title!),
        trailing: Radio(
          value: true,
          groupValue: widget.isChecked!,
          onChanged: (value) {
             setState(() {
               _isChecked = value;


             });
          },
        ),
      ),
    );
  }
}