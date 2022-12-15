import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_cubit.dart';
import 'package:lafyuu/Cubits/cart_screen_cubit/cart_screen_states.dart';
import 'package:lafyuu/Model/cart_model.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/card_in_cart.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(context) {
    //assert(index != null);
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
            _totalPrice(
              total: CartCubit()..getTotal(),
              discountedPrice: CartCubit().getDiscountPrice(),
              quantity: CartCubit().getQuantity(),
            ),
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

_totalPrice({
  quantity,
  discountPercentage,
  total,
  discountedPrice,
}) {
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
              "Items ($quantity)",
            ),
            Text(
              "\$ $discountedPrice",
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
              "\$ $discountPercentage",
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
              "\$ $discountedPrice",
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
              "\$ $total",
              style: TextStyle(color: Appcolors().myBlue),
            ),
          ],
        ),
      ],
    ),
  );
}
