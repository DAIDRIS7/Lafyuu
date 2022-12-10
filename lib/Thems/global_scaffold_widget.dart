import 'package:flutter/material.dart';

class MyScaffoldWidget extends StatelessWidget {
  final String titleText;
  final Widget? leadingIcon;
  final Widget body;
  MyScaffoldWidget(
    this.titleText,
    this.leadingIcon,
    this.body,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText),
        leading: IconButton(
          onPressed: () {},
          icon: leadingIcon ??
              Icon(
                Icons.arrow_back_ios,
              ),
        ),
      ),
      body: body,
    );
  }
}
