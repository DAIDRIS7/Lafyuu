import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/Notification/activity_notifications.dart';
import 'package:lafyuu/Screens/Notification/notifacaions_in_feed.dart';
import 'package:lafyuu/Screens/Notification/notifications_in_offer.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 10,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  const Text(
                    "Notification",
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OffersNotifications(),
                      ));
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.sell,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "Offer",
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeedNotifications(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "Feed",
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ActivityNotifications(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.notifications,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    const Text(
                      "Activity",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
