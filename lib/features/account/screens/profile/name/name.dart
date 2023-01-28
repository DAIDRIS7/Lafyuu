import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class MyName extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: ' Name',
      body: _buildBody(),
    );
  }
}

_buildBody() {
  return Column(
    children: [
      _textFormField(
        hintText: 'First  Name ',
        name: 'First  Name',
      ),
      SizedBox(
        height: 7,
      ),
      _textFormField(
        hintText: 'Last Name ',
        name: 'Last Name',
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
      ),
    ),
  ]);
}
