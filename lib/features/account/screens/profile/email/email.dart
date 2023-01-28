import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class MyEmail extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: ' Email ',
      body: _buildBody(),
    );
  }
}

_buildBody() {
  return Column(
    children: [
      _textFormField(
        hintText: 'daidris7@gmail.com',
        name: 'Email',
      ),
      Row(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "We Will Send Message to you to verify your email",
              )),
        ],
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "Change Email",
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
        prefixIcon: Icon(
          Icons.email,
        ),
      ),
    ),
  ]);
}
