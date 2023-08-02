import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants/app_colors.dart';

class ListingsNotificationsPage extends StatelessWidget {
  const ListingsNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.grey),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppColors.green,
                  child: Text("FA"),
                ),
                title: Text(
                  "SMA HR recruit has been saved in Favorites",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Today | 2:30 PM",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
