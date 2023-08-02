import 'package:flutter/material.dart';
import 'package:job_list/src/constants/app_colors.dart';
import 'package:job_list/src/constants/constants.dart';
import 'package:job_list/src/screens/notification_screen/notification_screen.dart';

import '../../widgets/cards/ad_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search for job",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                suffix: Container(
                  width: 20,
                  color: Colors.blue,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Job match your intrest",
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
                  8,
                  (index) => const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AdCard(),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
