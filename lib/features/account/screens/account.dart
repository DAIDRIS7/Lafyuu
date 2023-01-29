import 'package:flutter/material.dart';
import 'package:lafyuu/DAIDRIS7/daidris7.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';
import 'package:lafyuu/features/address/add_address.dart';
import 'package:lafyuu/features/order/order_screen.dart';
import 'package:lafyuu/features/payment/add_payment.dart';
import 'package:lafyuu/features/account/screens/profile/profile.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyScaffoldWidget(
      leadingIcon: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DAIDRIS7(),
              ),
            );
          },
          icon: Icon(
            Icons.person,
            color: Appcolors().myBlue,
          )),
      titleText: 'Account',
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileInfo(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person,
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      const Text(
                        "Profile",
                      ),
                    ],
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderScreen(),
                      ));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.shopping_bag,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "Order ",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddAddress(),
                      ));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "Address",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddPayment()),
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.credit_card,
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    const Text(
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
