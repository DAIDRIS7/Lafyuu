import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class MyBirthDay extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: 'Birthday',
      body: _buildBody(),
    );
  }
}

_buildBody() {
  return Column(
    children: [
      _textFormField(
        hintText: '2002-6-16',
        name: 'Birthday',
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
        suffixIcon: Icon(Icons.calendar_today),
      ),
    ),
  ]);
}
