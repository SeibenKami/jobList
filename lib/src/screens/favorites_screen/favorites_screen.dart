import 'package:flutter/material.dart';
import 'package:job_list/src/widgets/cards/ad_card.dart';

import '../../constants/app_colors.dart';
import '../notification_screen/notification_screen.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "JobList",
          style: TextStyle(
              color: AppColors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const NotificationScreen()));
            },
            child: Icon(
              Icons.notifications_outlined,
              color: AppColors.blue,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Icon(
            Icons.email_outlined,
            color: AppColors.blue,
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Favorite Listings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ...List.generate(
                    6,
                    (index) => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AdCard(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
