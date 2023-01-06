import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/app_colors.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyScaffoldWidget(
      titleText: 'Order Details',
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: _timeLineSection(),
                ),
                Expanded(
                  child: _timeLineSection(),
                ),
                Expanded(
                  child: _timeLineSection(),
                ),
                Expanded(
                  child: _timeLineSection(),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            _productCardSection(),
            SizedBox(
              height: 7,
            ),
            _shippingDetails(),
            SizedBox(
              height: 7,
            ),
            _paymentDetails(),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Notify Me",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_timeLineSection() {
  return Container(
    constraints: const BoxConstraints(maxHeight: 57),
    child: TimelineTile(
      //   afterLineStyle: LineStyle(color: Appcolors().myGreen, thickness: 5),
      beforeLineStyle: LineStyle(thickness: 7, color: Appcolors().myBlue),
      alignment: TimelineAlign.center,
      axis: TimelineAxis.horizontal,
      //isLast: true,
      hasIndicator: false,
      isFirst: true,
      endChild: Text(
        "packing",
      ),
      indicatorStyle: IndicatorStyle(
        height: 24, drawGap: true,
        color: Appcolors().myBlue, // indicator: Text("DAIDRIS7"),
        iconStyle: IconStyle(
          fontSize: 45,
          color: Appcolors().myWhite,
          iconData: Icons.access_alarm,
        ),
      ),
    ),
  );
}

_productCardSection() {
  return Column(children: [
    Row(children: [
      Text(
        "Product",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Appcolors().myDark,
        ),
      ),
    ]),
    SizedBox(
      height: 7,
    ),
    Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Appcolors().myGrey,
        ),
      ),
      child: ListTile(
        leading: Image.asset(
          "assets/images/image1.png",
        ),
        title: Text(
          "DAIDRIS7 SHEOS",
        ),
        subtitle: Text(
          "\$6",
        ),
        trailing: Icon(Icons.favorite_border),
      ),
    ),
  ]);
}

_shippingDetails() {
  return Column(
    children: [
      Row(children: [
        Text(
          "Shipping Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Appcolors().myDark,
          ),
        ),
      ]),
      SizedBox(
        height: 7,
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Appcolors().myGrey,
          ),
        ),
        child: Column(
          children: [
            _myRow(
              name: "Date shipping",
              details: "January, 4,2023",
            ),
            _myRow(
              name: "Shipping",
              details: "DAIDRIS7EXPRESS",
            ),
            _myRow(
              name: "No. Resi",
              details: "0912345678",
            ),
            _myRow(
              name: "Address",
              details: """Dar Elsalam,Omdurman, Khartoum, Sudan""",
            ),
          ],
        ),
      ),
    ],
  );
}

_paymentDetails() {
  return Column(
    children: [
      Row(children: [
        Text(
          "Payment Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Appcolors().myDark,
          ),
        ),
      ]),
      SizedBox(
        height: 7,
      ),
      Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Appcolors().myGrey,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _myRow(),
                _myRow(),
                _myRow(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Appcolors().myDark,
                      ),
                    ),
                    Text(
                      "4465",
                    ),
                  ],
                ),
              ])),
    ],
  );
}

_myRow({name, details}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        name ?? "DAIDRIS7",
      ),
      Text(
        details ?? """GOAT """,
      ),
    ],
  );
}
