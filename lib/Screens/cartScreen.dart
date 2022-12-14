import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lafyuu/Thems/app_colors.dart';
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
        child: ListView(
          children: [
            CardInCartModel(),
            SizedBox(
              height: 15,
            ),
            _cuponField(),
            SizedBox(
              height: 15,
            ),
            _totalPrice(),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Check out",
                ),
              ),
            ),
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
        suffixIcon: ElevatedButton(
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
    padding: EdgeInsets.all(
      6,
    ),
    height: 164,
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromARGB(255, 215, 221, 237)),
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Items (3)",
            ),
            Text(
              "\$598.86",
              style: TextStyle(color: Appcolors().myBlue),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping",
            ),
            Text(
              "\$40.00",
              style: TextStyle(color: Appcolors().myBlue),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              " Import charges",
            ),
            Text(
              "\$128.00",
              style: TextStyle(color: Appcolors().myBlue),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Price",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
              ),
            ),
            Text(
              "\$766.86",
              style: TextStyle(color: Appcolors().myBlue),
            ),
          ],
        ),
      ],
    ),
  );
}
