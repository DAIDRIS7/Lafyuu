import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class AddAddress extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors().myWhite,
      appBar: AppBar(
        backgroundColor: Appcolors().myWhite,
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
        child: ListView(children: [
          Row(
            children: [
              Text(
                "Country or region",
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
          _formFieldSeccsion(
            name: "First Name",
          ),
          _formFieldSeccsion(
            name: "Last Name",
          ),
          _formFieldSeccsion(
            name: "Street Address",
          ),
          _formFieldSeccsion(
            name: "Street Address 2 (Optional)",
          ),
          _formFieldSeccsion(
            name: "City",
          ),
          _formFieldSeccsion(
            name: "State/Province/Region",
          ),
          _formFieldSeccsion(
            name: "Zip Code",
          ),
          _formFieldSeccsion(
            name: "Number Phone",
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add Address",
              ),
            ),
          ),
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
            border: OutlineInputBorder(), hintText: hintText //?? 'DAIDRIS7',
            ),
      ),
    ],
  );
}
