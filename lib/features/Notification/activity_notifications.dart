import 'package:flutter/material.dart';
import 'package:lafyuu/Thems/global_scaffold_widget.dart';

class ActivityNotifications extends StatelessWidget {
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
      titleText: 'Notification',
      body: SafeArea(
        child: _listTileInActivity(),
      ),
    );
  }
}

_listTileInActivity() {
  return ListTile(
    leading: Icon(
      Icons.swap_vert,
    ),
    title: Text(
      "The Best Product",
    ),
    subtitle: Column(
      children: [
        Text(
          "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
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
