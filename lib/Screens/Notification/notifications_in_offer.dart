import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class OffersNotifications extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: 'Notification',
      body: SafeArea(
        child: _listTileInOffer(),
      ),
    );
  }
}

_listTileInOffer() {
  return ListTile(
    leading: Icon(
      Icons.sell,
    ),
    title: Text(
      "The Best Product",
    ),
    subtitle: Column(
      children: [
        Text(
          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
        ),
        SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Text(
              "December,26,2022,6.59 PM",
            ),
          ],
        ),
      ],
    ),
  );
}
