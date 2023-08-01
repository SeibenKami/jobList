import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:job_list/src/constants/app_colors.dart';
import 'package:job_list/src/constants/constants.dart';
import 'package:job_list/src/screens/auth_screen/sign_in_screen.dart';
import 'package:job_list/src/screens/auth_screen/sign_up_screen.dart';

import '../../widgets/already_text_notice.dart';
import '../../widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 4,
            reverse: true,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("$bg$index.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Expanded(
                  child: Text(
                    "JobList",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(height: size.height / 4),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          "List and Find Ads with JobList",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text(
                          "Discover jobs and list your jobs as well. Convinient ad listing platform",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      //Continue Button
                      CustomButton(
                        label: "Get Started",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => SignInScreen()));
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Option to register
                      AlreadyTextNotice(
                        label: Text(
                          "Haven't Registered?",
                          style: TextStyle(color: Colors.white),
                        ),
                        secondText: "Register",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => SignUpScreen()));
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
