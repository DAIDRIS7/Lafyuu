import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';

class DeleteAddressConfirmation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/Alert.png",
            ),
            Text(
              "Confirmation",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              "Are you sure you wanna delete address",
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Confirm",
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Appcolors().myWhite,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Appcolors().myGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
