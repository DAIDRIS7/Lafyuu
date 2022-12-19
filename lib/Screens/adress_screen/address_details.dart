import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/adress_screen/add_address.dart';
import 'package:lafyuu/Screens/adress_screen/delete_address_confirmation.dart';

class AdressDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildbody(context),
    );
  }
}

_buildbody(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.all(14.0),
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 215, 221, 237)),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "DAIDRIS7",
                textAlign: TextAlign.end,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            """ 3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States""",
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "0123456789",
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(children: [
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Edit ",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeleteAddressConfirmation(),
                  ),
                );
              },
              icon: Icon(Icons.delete_forever_outlined),
            ),
          ]),
        ]),
      ),
      Container(
        margin: EdgeInsets.all(
          12,
        ),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddAddress(),
              ),
            );
          },
          child: Text(
            "Add Address",
          ),
        ),
      ),
    ],
  );
}
