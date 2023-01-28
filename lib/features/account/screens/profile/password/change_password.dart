import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class ChangePassword extends StatelessWidget {
  Widget build(BuildContext) {
    return MyScaffoldWidget(
      titleText: 'Change Password',
      body: _buildBody(),
    );
  }
}

_buildBody() {
  return Column(
    children: [
      _textFormField(
        hintText: 'Your Password',
        name: 'Your Password ',
      ),
      SizedBox(
        height: 7,
      ),
      _textFormField(
        hintText: 'New Password ',
        name: 'new password',
      ),
      SizedBox(
        height: 7,
      ),
      _textFormField(
        hintText: 'password  again ',
        name: 'password again',
      ),
      SizedBox(
        height: 7,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "Save",
        ),
      ),
    ],
  );
}

_textFormField({required String name, required String hintText}) {
  return Column(children: [
    Row(
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Appcolors().myDark,
          ),
        ),
      ],
    ),
    SizedBox(
      height: 7,
    ),
    TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        suffixIcon: Icon(
          Icons.lock,
        ),
      ),
    ),
  ]);
}
