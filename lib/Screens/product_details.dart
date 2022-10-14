import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Icon(
                Icons.lock,
              ),
              Text(
                "rhfnsowogvflalcsjflhs",
              ),
              Icon(
                Icons.search,
              ),
              Icon(
                Icons.favorite,
              ),
            ],
          )
        ],
      ),
    );
  }
}
