import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:job_list/src/constants/app_colors.dart';
import 'package:job_list/src/constants/constants.dart';
import 'package:job_list/src/screens/auth_screen/sign_up_screen.dart';
import 'package:job_list/src/screens/home_screen/home_nav_bar.dart';
import 'package:job_list/src/widgets/google_button.dart';

import '../../widgets/already_text_notice.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/or_divider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool fieldsReadOnly = false;
  final _formKey = GlobalKey<FormState>();
  bool changeEmailColor = false;
  bool changePassColor = false;
  bool seePass = false;
  String? email;
  String? pass;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(greyBg), fit: BoxFit.cover),
          ),
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
                  color: email != null && email != "" || changeEmailColor
                      ? Colors.black
                      : AppColors.bgGrey,
                ),
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                readOnly: fieldsReadOnly,
                onChanged: (value) {
                  email = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  }
                  return null;
                },
                onTap: () {
                  setState(() {
                    changeEmailColor = true;
                    changePassColor = false;
                  });
                },
              ),

              const SizedBox(
                height: 20,
              ),
              // password textfield
              CustomTextField(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: pass != null && pass != "" || changePassColor
                      ? Colors.black
                      : AppColors.bgGrey,
                ),
                hintText: "Enter your password",
                keyboardType: TextInputType.visiblePassword,
                readOnly: fieldsReadOnly,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      seePass = !seePass;
                    });
                  },
                  child: Icon(
                    seePass
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off,
                    color: pass != null && pass != "" || changePassColor
                        ? Colors.black
                        : AppColors.bgGrey,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field cannot be empty";
                  }
                  return null;
                },
                onChanged: (value) {
                  pass = value;
                },
                onTap: () {
                  setState(() {
                    changePassColor = true;
                    changeEmailColor = false;
                  });
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
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (ctx) => HomeNavBar()),
                        (route) => false);
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              OrDivider(
                size: size,
              ),
              const SizedBox(
                height: 20,
              ),
              GoogleButton(
                label: "Continue with Google",
                onTap: () {},
              ),
              SizedBox(
                height: size.height / 6,
              ),
              AlreadyTextNotice(
                label: const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                secondText: "Create Account",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const SignUpScreen()));
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
