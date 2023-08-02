import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:job_list/src/constants/app_colors.dart';
import 'package:job_list/src/screens/notification_screen/components/general_notifications.dart';
import 'package:job_list/src/screens/notification_screen/components/listing_notifications.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.transparent,
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            title: Text("Notifications"),
            bottom: TabBar(
              indicatorColor: AppColors.blue,
              unselectedLabelColor: Colors.black54,
              labelColor: AppColors.blue,
              tabs: [
                Tab(
                  text: "General",
                ),
                Tab(
                  text: "Listings",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: GeneralNotificationPage(),
            ),
            Center(
              child: ListingsNotificationsPage(),
            ),
          ])),
    );
  }
}
