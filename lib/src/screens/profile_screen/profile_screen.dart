import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/0.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.blue),
                child: const Center(
                    child: Text(
                  "change photo",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              const ListTile(
                leading: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                title: Text("Edit Profile"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.support_agent,
                  color: Colors.black,
                ),
                title: Text("Help center"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.live_help_outlined,
                  color: Colors.black,
                ),
                title: Text("Contact us"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.people_alt_outlined,
                  color: Colors.black,
                ),
                title: Text("Invite friends"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
