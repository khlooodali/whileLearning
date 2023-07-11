import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meal_monkey/core/constant/palette.dart';
import 'package:meal_monkey/core/constant/textstyle_manager.dart';
//import 'package:meal_monkey/main.dart';

class ProfileComponentView extends StatefulWidget {
  @override
  State<ProfileComponentView> createState() => _ProfileComponentViewState();
}

class _ProfileComponentViewState extends State<ProfileComponentView> {
  String? imagepath;

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: 102,
          height: 102,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
            onTap: () async {
              ///image picker

              var image = await ImagePicker.platform
                  .getImage(source: ImageSource.gallery);

              if (image != null) imagepath = image.path;
              setState(() {});
            },
            child: Stack(
              children: [
                (imagepath != null)
                    ? Image.file(
                        File(imagepath!),
                        fit: BoxFit.scaleDown,
                      )
                    : Image.asset(
                        "assets/images/user.png",
                        fit: BoxFit.scaleDown,
                      ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Center(
                    child: Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Palette.secondryFontColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Palette.mainColor,
                  size: 25,
                )),
            SizedBox(
              width: 3,
            ),
            Text(
              'Edit Profile',
              style: getMeduimStyle(color: Palette.mainColor),
            ),
          ],
        ),
        Text(
          'Hi there Emilia!',
          style: getBoldStyle16(color: Palette.primaryFontColor),
        ),
        Text(
          'Sign Out',
          style: getMeduimStyle(color: Palette.placeholderColor),
        ),
      ],
    );
  }
}
