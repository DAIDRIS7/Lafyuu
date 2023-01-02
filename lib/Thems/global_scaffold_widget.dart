import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class MyScaffoldWidget extends StatelessWidget {
  final String titleText;
  final Widget? leadingIcon;
  final Widget body;
  MyScaffoldWidget({
    required this.titleText,
    this.leadingIcon,
    required this.body,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors().myWhite,
      appBar: AppBar(
        backgroundColor: Appcolors().myWhite,
        elevation: 0,
        title: Text(
          titleText,
          style: TextStyle(
            color: Appcolors().myDark,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: leadingIcon ??
              Icon(
                Icons.arrow_back_ios,
                color: Appcolors().myDark,
              ),
        ),
      ),
      body: body,
    );
  }
}
