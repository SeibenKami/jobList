import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_list/src/constants/constants.dart';
import 'package:job_list/src/widgets/cards/ad_card.dart';

import '../../constants/app_colors.dart';
import '../notification_screen/notification_screen.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  Random random = Random();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        title: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 2,
          ),
          leading: const CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage("assets/images/0.jpg"),
          ),
          title: const Text(
            "Mon, 12 May 2023",
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          subtitle: const Text(
            "Search, Find and Apply",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          trailing: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const NotificationScreen(),
                ),
              );
            },
            child: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
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
                    (index) => Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AdCard(
                        randomColor: randColorNums[index],
                      ),
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
