import 'package:flutter/material.dart';

import '../palette.dart';
import '../textstyle_manager.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({super.key});

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 333,
      decoration: BoxDecoration(
        color: Palette.textFiledColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search food',
          hintStyle: getRegularStyle15(color: Palette.placeholderColor),
          prefixIcon: Icon(
            Icons.search,
            color: Palette.secondryFontColor,
          ),
          border: InputBorder.none,
        ),
        onChanged: (value) {
          print(_searchController.text);
          // search code
        },
      ),
    );
  }
}
