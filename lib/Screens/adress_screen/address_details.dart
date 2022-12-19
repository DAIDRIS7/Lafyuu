import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/adress_screen/add_address.dart';

class AdressDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildbody(context),
    );
  }
}

_buildbody(context) {
  return Container(
    padding: EdgeInsets.all(19),
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.all(14.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              height: 8,
            ),
            Text(
              "DAIDRIS7",
              textAlign: TextAlign.end,
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
                  print('clicked');
                },
                icon: Icon(Icons.delete_forever_outlined),
              ),
            ]),
          ]),
        ),
        ElevatedButton(
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
      ],
    ),
  );
}
