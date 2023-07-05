

import 'package:flutter/material.dart';

import '../../../core/constant/custom_button/view.dart';
import '../../../core/constant/custom_textfiled.dart';

class FormView extends StatefulWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController confirmpass = TextEditingController();

  TextEditingController password = TextEditingController();
  GlobalKey key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 34,
              right: 34,
            ),
            child: CustomTextFiled(
              type: TextInputType.name,
              controller: name,
              text_label: 'Name',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 34,
              right: 34,
            ),
            child: CustomTextFiled(
              type: TextInputType.emailAddress,
              controller: email,
              text_label: ' Email',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 34,
              right: 34,
            ),
            child: CustomTextFiled(
              type: TextInputType.number,
              controller: phone,
              text_label: 'Mobile No',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 34,
              right: 34,
            ),
            child: CustomTextFiled(
              type: TextInputType.streetAddress,
              controller: address,
              text_label: 'Address',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 34,
              right: 34,
            ),
            child: CustomTextFiled(
              type: TextInputType.visiblePassword,
              issecure: true,
              controller: password,
              text_label: 'Password',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 34,
              right: 34,
            ),
            child: CustomTextFiled(
              type: TextInputType.visiblePassword,
              issecure: true,
              controller: confirmpass,
              text_label: 'Confirm Password',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 34, right: 34,bottom: 50),
            child: CustomButton(
              text: 'Save',
              value: 28,
              whenTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
