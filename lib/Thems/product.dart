import 'package:flutter/material.dart';

List product = [
  {
    'name': 'product 1',
    'price ': 200,
    'discount': '25%',
    'image': 'assets/images/image1.png'
  }
];

class Listone extends StatefulWidget {
  const Listone({Key? key}) : super(key: key);

  @override
  State<Listone> createState() => _ListoneState();
}

class _ListoneState extends State<Listone> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 238,
      child: ListView.builder(
        itemCount: product.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              height: 180,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  //image product
                  Image.asset(
                    product[index]['image'],
                    height: 100,
                    width: 100,
                  ),
                  Text(product[index]['name']),
                  Text('${product[index]['price']}'),
                  Row(
                    children: [
                      Text('/${'price '}'),
                      Text(product[index]['discount'])
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
