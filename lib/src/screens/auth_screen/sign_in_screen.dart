import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:job_list/src/constants/app_colors.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool fieldsReadOnly = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: size.height / 6,
              ),
              const Text(
                "Login to your \naccount ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),

              //email textfield
              CustomTextField(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.bgGrey,
                ),
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                readOnly: fieldsReadOnly,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  }
                  return null;
                },
              ),

              const SizedBox(
                height: 20,
              ),
              // password textfield
              CustomTextField(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: AppColors.bgGrey,
                ),
                hintText: "Enter your password",
                keyboardType: TextInputType.emailAddress,
                readOnly: fieldsReadOnly,
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.bgGrey,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  }
                  return null;
                },
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password",
                  style: TextStyle(color: AppColors.blue),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              CustomButton(
                label: "Sign in",
              ),
              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
