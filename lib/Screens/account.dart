import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        "Profile",
                      ),
                    ],
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_bag,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Order ",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Address",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "Payment ",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
