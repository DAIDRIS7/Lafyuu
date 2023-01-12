import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class FeedNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: 'Notification',
      body: SafeArea(
        child: _listTileInFeed(),
      ),
    );
  }
}

_listTileInFeed() {
  return ListTile(
    leading: Image.asset(
      'assets/images/image1.png',
      fit: BoxFit.cover,
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
              "December, 26,2022,7.28  PM",
            ),
          ],
        ),
      ],
    ),
  );
}
