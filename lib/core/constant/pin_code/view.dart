import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../palette.dart';
import '../textstyle_manager.dart';

class PincodeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headlineMedium,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                hintText: '*',
                hintStyle: getRegularStyle37(color: Palette.placeholderColor),
                fillColor: Palette.textFiledColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15),
                  borderSide: new BorderSide(
                    color: Palette.textFiledColor,
                  ),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline6,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                hintText: '*',
                hintStyle: getRegularStyle37(color: Palette.placeholderColor),
                fillColor: Palette.textFiledColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15),
                  borderSide: new BorderSide(
                    color: Palette.textFiledColor,
                  ),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline6,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                hintText: '*',
                hintStyle: getRegularStyle37(color: Palette.placeholderColor),
                fillColor: Palette.textFiledColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15),
                  borderSide: new BorderSide(
                    color: Palette.textFiledColor,
                  ),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 57,
            width: 56,
            child: TextFormField(
              keyboardType: TextInputType.number,
              style: Theme.of(context).textTheme.headline6,
              // getLightStyle(color: Palette.greyColor),
              textAlign: TextAlign.center,
              onSaved: (pin1) {},
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              decoration: InputDecoration(
                hintText: '*',
                hintStyle: getRegularStyle37(color: Palette.placeholderColor),
                fillColor: Palette.textFiledColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(15),
                  borderSide: new BorderSide(
                    color: Palette.textFiledColor,
                  ),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
