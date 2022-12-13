import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lafyuu/Thems/card_in_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
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
            _cuponField(),
          ],
        ),
      ),
    );
  }
}

_cuponField() {
  return Container(
    height: 43,
    //  width: MediaQuery.of(context).size.width,
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
