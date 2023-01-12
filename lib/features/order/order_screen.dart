import 'package:flutter/material.dart';
import 'package:lafyuu/features/order/order_details.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class OrderScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: 'Order',
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderDetailsScreen(),
              ));
        },
        child: _cardInOrder(),
      ),
    );
  }
}

_cardInOrder() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromARGB(255, 215, 221, 237),
      ),
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    padding: EdgeInsets.all(
      7,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Text(
              "DAIDRIS7developers",
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Text(
              "Order at DAIDRIS7 :December,30",
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          height: 0.5,
          child: ListView.builder(
            // padding: EdgeInsets.all(0.7),
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            //  shrinkWrap: true,
            itemCount: 900,
            itemBuilder: (context, index) {
              return Container(
                // height: 0.1,
                width: 0.7,
                color: Appcolors().myGrey,
              );
            },
          ),
        ),
        SizedBox(
          height: 7,
        ),
        _orderTypeAndCountAndPrice(),
        SizedBox(
          height: 7,
        ),
        _orderTypeAndCountAndPrice(
          titleName: "items",
          subName: "1 Items purchased",
        ),
        SizedBox(
          height: 7,
        ),
        _orderTypeAndCountAndPrice(
          titleName: "price",
          subName: "\$ 245",
        ),
        SizedBox(
          height: 7,
        ),
      ],
    ),
  );
}

Row _orderTypeAndCountAndPrice({titleName, subName}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        titleName ?? "Order Status",
      ),
      Text(
        subName ?? "Shipping",
      ),
    ],
  );
}
