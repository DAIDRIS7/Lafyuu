import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/card_in_cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CardInCartModel(),
            _cuponField(context),
          ],
        ),
      ),
    );
  }
}

Widget _cuponField(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'package',
        suffixIcon: RaisedButton(
          onPressed: () {},
          child: Text(
            "Apply",
          ),
        ),
      ),
    ),
  );
}
