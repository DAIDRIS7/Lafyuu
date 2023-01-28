import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class MyGender extends StatelessWidget {
  final List<String> listOfGenders = [
    'male',
    'female',
    'others',
  ];
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: 'Gender',
      body: _buildBody(listOfGenders),
    );
  }
}

_buildBody(List<String> listOfGenders) {
  return DropdownButtonFormField(
    items: listOfGenders
        .map(
          (e) => DropdownMenuItem(
            child: Text(e),
            value: e,
          ),
        )
        .toList(),
    onChanged: (value) {},
  );
}
