import 'package:flutter/material.dart';
import 'package:job_list/src/constants/app_colors.dart';
import 'package:job_list/src/screens/onboarding_screen/onboarding_screen.dart';
import 'package:job_list/src/widgets/custom_button.dart';
import 'package:job_list/src/widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Create new \naccount",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.grey,
              ),
              hintText: "Enter your email",
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.grey,
              ),
              hintText: "Enter your password",
              suffixIcon: Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(label: "Sign Up"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 2,
                  width: size.width / 2 - 50,
                  color: Colors.grey.shade200,
                ),
                const Text(
                  "or",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 2,
                  width: size.width / 2 - 50,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
