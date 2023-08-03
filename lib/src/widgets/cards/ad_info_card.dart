import 'package:flutter/material.dart';
import 'package:job_list/src/constants/app_colors.dart';

class AdInfoCard extends StatelessWidget {
  const AdInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          height: 200,
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Junior Graphic Designer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Text(
                  "HyperStudio - Kumasi. Ghana",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "2 Days ago",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const Text(
                        ".",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        "33 Applicants",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      const Text(
                        ".",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        "80% Matches you",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 1,
          right: 170,
          child: CircleAvatar(
            radius: 30,
            child: Icon(Icons.abc),
          ),
        ),
      ],
    );
  }
}
