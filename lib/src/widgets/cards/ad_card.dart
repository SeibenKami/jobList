import 'package:flutter/material.dart';
import 'package:job_list/src/screens/ad_details_screen/ad_details_screen.dart';

import '../../constants/app_colors.dart';

class AdCard extends StatelessWidget {
  const AdCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool saved = false;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => AdDetailsScreen()));
      },
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 110, 168, 165).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 2)),
          ],
        ),
        child: Column(
          children: [
            StatefulBuilder(
              builder: (context, setState) => ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.abc),
                ),
                title: Text("Junior Graphic Designer"),
                subtitle: Text(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    backgroundColor: Colors.grey.shade200,
                    label: Text(
                      "Remote",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey.shade200,
                    label: Text(
                      "Graphic Designer",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey.shade200,
                    label: Text(
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
