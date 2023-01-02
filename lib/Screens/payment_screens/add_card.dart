import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class AddCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors().myWhite,
      appBar: AppBar(
        backgroundColor: Appcolors().myWhite,
        title: Text(
          "Add Card",
          style: TextStyle(color: Appcolors().myDark),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Appcolors().myDark,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                SizedBox(width: 7),
                Text(
                  "Card Number",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Appcolors().myDark,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(
                7,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Card Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 7),
                        Text(
                          "Expiration Date",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Appcolors().myDark,
                          ),
                          //  textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Expiration Date',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(children: [
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Text(
                        "Security Code",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Appcolors().myDark,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(7),
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Security Code',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            Row(
              //    mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        //  SizedBox(width: 7),
                        Text(
                          "Card Holder",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Appcolors().myDark,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.961,
                      margin: EdgeInsets.all(7),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Card Number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Add Card",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
