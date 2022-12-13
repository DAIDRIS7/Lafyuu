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
            SizedBox(
              height: 15,
            ),
            _cuponField(),
            _totalPrice(),
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
        hintText: 'Enter Cupon Code ',
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

_totalPrice() {
  return Container(
    width: 343,
    height: 164,
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 215, 221, 237)),
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              "Items (3)",
            ),
            Text(
              "\$598.86",
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Shipping",
            ),
            Text(
              "\$40.00",
            ),
          ],
        ),
        Row(
          children: [
            Text(
              " Import charges",
            ),
            Text(
              "\$128.00",
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Total Price",
            ),
            Text(
              "\$766.86",
            ),
          ],
        ),
      ],
    ),
  );
}
