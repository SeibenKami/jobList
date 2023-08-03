import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_list/src/screens/ad_details_screen/ad_details_screen.dart';

import '../../constants/app_colors.dart';

class AdCard extends StatefulWidget {
  const AdCard({super.key, required this.randomColor});
  final int randomColor;
  @override
  State<AdCard> createState() => _AdCardState();
}

class _AdCardState extends State<AdCard> {
  bool saved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (ctx) => const AdDetailsScreen()));
      },
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color:
                    const Color.fromARGB(255, 110, 168, 165).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 2)),
          ],
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 190 + widget.randomColor,
                    widget.randomColor + 50, 247 + widget.randomColor),
                child: const Icon(Icons.abc),
              ),
              title: const Text("Junior Graphic Designer"),
              subtitle: const Text(
                "HyperStudio - Kumasi. Ghana",
                style: TextStyle(fontSize: 12),
              ),
              trailing: GestureDetector(
                onTap: () {
                  setState(() {
                    saved = !saved;
                  });
                  saved
                      ? ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Saved in favorites'),
                            duration: Duration(seconds: 1),
                          ),
                        )
                      : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Removed from favorites'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                },
                child: Icon(
                  saved ? Icons.bookmark_add : Icons.bookmark_add_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Expected Salary",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "\$2k - \$4k",
                    style: TextStyle(
                      color: AppColors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "2 Days ago",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "33 Applicants",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "80% Matches you",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    backgroundColor: Colors.grey.shade200,
                    label: const Text(
                      "Remote",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey.shade200,
                    label: const Text(
                      "Graphic Designer",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey.shade200,
                    label: const Text(
                      "Full-time",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
