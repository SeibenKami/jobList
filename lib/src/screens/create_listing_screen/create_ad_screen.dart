import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/app_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../notification_screen/notification_screen.dart';

class CreateAddScreen extends StatefulWidget {
  const CreateAddScreen({super.key});

  @override
  State<CreateAddScreen> createState() => _CreateAddScreenState();
}

class _CreateAddScreenState extends State<CreateAddScreen> {
  String? heading;
  String? description;
  final _formKey = GlobalKey<FormState>();
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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create Ad",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.info_outline,
                    color: AppColors.blue,
                  ),
                  hintText: "Heading",
                  label: const Text("Heading"),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    heading = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.business_outlined,
                    color: AppColors.blue,
                  ),
                  hintText: "Company Name",
                  label: const Text("Company Name"),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    heading = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.lightbulb_outline,
                    color: AppColors.blue,
                  ),
                  hintText: "Skill Level",
                  label: const Text("Skill Level"),
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    heading = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: AppColors.blue,
                  ),
                  hintText: "Salary Range",
                  label: const Text("Salary Range"),
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    heading = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.lightbulb_outline,
                    color: AppColors.blue,
                  ),
                  hintText: "Job Description",
                  label: const Text("Job Description"),
                  keyboardType: TextInputType.text,
                  maxLines: 4,
                  onChanged: (value) {
                    heading = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onTap: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Add Optional Photos"),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(color: Colors.black),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.blue,
                    ),
                  ),
                ),
                CustomButton(
                  label: "Upload Ad",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Add uploaded ')),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
