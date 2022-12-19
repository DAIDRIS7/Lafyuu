import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Address",
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Text(
                "Country",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'choose ',
              border: OutlineInputBorder(),
            ),
          ),
          _formFieldSeccsion(),
        ]),
      ),
    );
  }
}

_formFieldSeccsion({name, hintText}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: 8,
      ),
      Row(
        children: [
          Text(
            name ?? "DAIDRIS7",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(height: 8),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText ?? 'DAIDRIS7',
        ),
      ),
    ],
  );
}
