import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/payment_screens/add_card.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class CreditCardOrDebit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Appcolors().myDark,
          ),
        ),
        backgroundColor: Appcolors().myWhite,
        title: Text(
          "Credit Card Or Debit",
          style: TextStyle(
            color: Appcolors().myDark,
          ),
        ),
      ),
      backgroundColor: Appcolors().myWhite,
      body: SafeArea(
        child: ListView(children: [
          _creditCardOrDebit(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCard(),
                ),
              );
            },
            child: Text(
              "Add Card",
            ),
          ),
        ]),
      ),
    );
  }
}

_creditCardOrDebit() {
  return Container(
    padding: EdgeInsets.all(
      12,
    ),
    margin: EdgeInsets.all(
      14,
    ),
    decoration: BoxDecoration(
      color: Appcolors().myBlue,
      border: Border.all(
        color: Color.fromARGB(
          255,
          215,
          221,
          237,
        ),
      ),
      borderRadius: BorderRadius.circular(9),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/icons/MasterCard.png",
              width: 55,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("1125"),
            Text("1125"),
            Text("1125"),
            Text("1125"),
          ],
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Card Holder",
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Lialyfa faberene ",
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Card Save ",
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "19/2048",
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
