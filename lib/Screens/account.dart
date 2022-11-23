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
                const Text(
                  "Account",
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                  onPressed: () {},
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
                onPressed: () {},
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
                onPressed: () {},
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
                onPressed: () {},
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
